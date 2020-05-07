require "./readme"
require "yaml"
require "json"
require "http/client"
require "colorize"
require "option_parser"

# A shard must have been built sometime in this span in order to be considered active.
private TIME_WINDOW = 1.year

module EnumConverter(T)
  def self.from_yaml(ctx : YAML::ParseContext, node : YAML::Nodes::Node) : T
    unless node.is_a?(YAML::Nodes::Scalar)
      node.raise "Expected scalar, not #{node.class}"
    end

    T.parse node.value
  end

  def self.to_yaml(value : T, yaml : YAML::Nodes::Builder)
    yaml.scalar value.to_s
  end
end

GITLAB_CLIENT     = HTTP::Client.new "gitlab.com", tls: true
TRAVIS_CLIENT     = HTTP::Client.new "api.travis-ci.org", tls: true
TRAVIS_PRO_CLIENT = HTTP::Client.new "api.travis-ci.com", tls: true
CIRCLE_CLIENT     = HTTP::Client.new "circleci.com", tls: true
DRONE_CLIENT      = HTTP::Client.new "cloud.drone.io", tls: true

# Represents a version control provider.
enum VC
  Github
  Gitlab

  # Returns the protocal and domain for `self`.
  def host : String
    case self
    when .github? then "https://github.com"
    when .gitlab? then "https://gitlab.com"
    end.not_nil!
  end
end

# Represents a CI provider.
#
# TODO: Add a way to resolve `Actions`.
enum CI
  None
  Travis
  Gitlab
  Circle
  Actions
  Drone
  TravisPro
  Exempt
end

# Represents a shard within `README.md`.
class Shard
  include YAML::Serializable
  include Comparable(Shard)

  # Manually keep track of shards using `CI::Actions` since there
  # is not currently a way to resolve if a shard uses it.
  private USING_GH_ACTIONS = {
    "athena-framework/athena",
    "blacksmoke16/oq",
    "cadmiumcr/cadmium",
    "cocol-project/cocol",
    "firejox/CrSignals",
    "jerometwell/hardwire",
    "mamantoha/crest",
    "neovintage/accord",
    "q9f/secp256k1.cr",
    "robacarp/keimeno",
    "RomainFranceschini/quartz",
    "soveran/ohm-crystal",
    "soveran/resp-crystal",
    "soveran/stal-crystal",
    "soveran/toro",
    "ujjwalguptaofficial/shivneri",
  }

  # Shards that are exempt from reporting.
  # Mainly for utilities and plugins that
  # can't really be tested autonomously.
  private EXEMPT_SHARDS = {
    "bcardiff/crystal-ast-helper",
    "crenv/crenv",
    "crystal-community/crystal-patterns",
    "crystal-lang-tools/crystal-ide",
    "crystal-lang-tools/Crystal.tmbundle",
    "crystal-lang-tools/sublime-crystal",
    "crystal-lang-tools/vscode-crystal-lang",
    "crystal-lang/clang.cr",
    "crystal-lang/crystal-mysql",
    "dotmilk/emacs-crystal-mode",
    "elorest/cry",
    "elorest/vim-slang",
    "exercism/crystal",
    "g3ortega/vscode-crystal",
    "https://github.com/will/crystal-pg",
    "jhass/DeBot",
    "juanedi/crystal-spacemacs-layer",
    "marciogm/asdf-crystal",
    "ruivieira/crystal-base",
    "Sija/crystal-dash-docset",
    "veelenga/crystal-zsh",
    "vscode-crystal-lang",
    "will/crystal-pg",
  }

  # The owner of the shard's repo.
  #
  # Can either be a user or organization.
  getter owner : String

  # The name of the shard's repo.
  getter name : String

  @[YAML::Field(converter: EnumConverter(VC))]
  # Which `VC` `self` uses.
  getter vc : VC

  @[YAML::Field(converter: EnumConverter(CI))]
  # Which `CI` `self` uses.
  getter ci : CI

  @[YAML::Field(emit_null: true)]
  # The last time `self` was built.
  #
  # TODO: Make this the last time `self` was _successfully_ built; would be more useful in the future.
  getter last_build : Time?

  # Try to resolve the `ci` of `self` by looking each shard up via
  # each CI provider's API.
  def initialize(@owner : String, @name : String, @vc : VC)
    puts "Adding #{@owner}/#{@name}"

    responses = Hash(CI, Time?).new

    response = TRAVIS_CLIENT.get("/repos/#{@owner}/#{@name}", headers: HTTP::Headers{"Accept" => "application/vnd.travis-ci.2.1+json"})

    if response.status.success?
      responses[CI::Travis] = TravisBuild.from_json(response.body, root: "repo").last_build_started_at
    end

    response = TRAVIS_PRO_CLIENT.get("/repos/#{@owner}/#{@name}", headers: HTTP::Headers{"Accept" => "application/vnd.travis-ci.2.1+json"})

    if response.status.success?
      responses[CI::TravisPro] = TravisBuild.from_json(response.body, root: "repo").last_build_started_at
    end

    response = CIRCLE_CLIENT.get("/api/v1.1/project/gh/#{@owner}/#{@name}", headers: HTTP::Headers{"Accept" => "application/json"})

    if response.status.success? && (time = Array(CircleBuild).from_json(response.body).find(&.start_time).try &.start_time)
      responses[CI::Circle] = time
    end

    response = GITLAB_CLIENT.get("/api/v4/projects/#{@owner}%2F#{@name}/pipelines")

    if response.status.success?
      responses[CI::Gitlab] = Array(GitlabBuild).from_json(response.body).find(&.created_at).try &.created_at
    end

    response = DRONE_CLIENT.get("/api/repos/#{@owner}/#{@name}/builds")

    if response.status.success?
      responses[CI::Drone] = Array(DroneBuild).from_json(response.body).find(&.started).try &.started
    end

    # Manually set the shard to use GH actions if its one in a static list.
    # Also assume it last ran today since there isn't a way to resolve it ATM.
    if USING_GH_ACTIONS.includes? "#{@owner}/#{@name}"
      responses[CI::Actions] = Time.utc
    end

    # Set exempt shards last build time to now.
    if EXEMPT_SHARDS.includes? "#{@owner}/#{@name}"
      responses[CI::Exempt] = Time.utc
    end

    pp responses

    @ci, @last_build = resolve responses

    msg = "#{@name} uses #{@ci}"

    if lb = @last_build
      msg += " and was last built #{(Time.utc - lb).days} days ago"
    else
      msg += " but was never built!".colorize(:red).to_s
    end

    puts msg, '\n'
  end

  # A `String` representation of `self`.
  #
  # Controls how `self` is formatted within the report.
  def to_s(io : IO) : Nil
    io.puts "#{@vc.host}/#{@owner}/#{@name} - @#{@owner}"
  end

  def <=>(other : self) : Int32
    @owner <=> other.owner
  end

  # Resolves the *responses* hash into a `CI` provider and `last_build` time.
  #
  # If there are more than 1 providers with a non nil build datetime, then the newest is chosen.
  private def resolve(responses : Hash(CI, Time?)) : Tuple(CI, Time?)
    case responses.size
    when 0
      {CI::None, nil}
    when 1
      responses.first
    else
      if responses.values.all?
        responses.max_by { |_k, v| v.not_nil! }
      else
        resolve(responses.reject! { |_k, v| v.nil? }.not_nil!)
      end
    end.not_nil!
  end
end

# Represents a build within `CI::Circle`.
record CircleBuild, start_time : Time? do
  include JSON::Serializable
end

# Represents a build within `CI::Gitlab`.
record GitlabBuild, created_at : Time? do
  include JSON::Serializable
end

# Represents a build within `CI::Travis` or `CI::TravisPro`.
record TravisBuild, last_build_started_at : Time? do
  include JSON::Serializable
end

# Represents a build within `CI::Drone`.
struct DroneBuild
  include JSON::Serializable

  @[JSON::Field(converter: Time::EpochConverter)]
  getter started : Time
end

# Type to wrap the shard list.
#
# Provides methods used in the cli to interact with `README.md` and the shard list.
record ShardList, shards : Array(Shard) = [] of Shard do
  include YAML::Serializable

  private OUT_FILE    = "./shard_list.yml"
  private REPORT_FILE = "./report.md"

  # Parses `README.md` to build out the shard list, resolving the CI/VC of each shard.
  def self.initialize : self
    rm = Readme.new
    shard_list = new

    shards = (rm.refs(/gitlab\.com/) + rm.refs(/github\.com/))

    shards.each do |ref|
      next if ref.starts_with? '#'
      uri = URI.parse(ref.chomp('/'))

      slug = uri.path.lchop('/').split('/')

      next if slug.size <= 1

      owner, name = slug

      vc = case uri.host
           when "github.com" then VC::Github
           when "gitlab.com" then VC::Gitlab
           else                   raise "Unexpected host #{uri.host}"
           end

      shard_list.shards << Shard.new owner, name, vc
    end

    File.write(OUT_FILE, shard_list.to_yaml)

    generate_report

    shard_list
  end

  # Generates the report file based on the current `OUT_FILE`
  def self.generate_report : Nil
    File.open(REPORT_FILE, "w") do |file|
      file.puts "### No CI"
      no_ci.join("", file) { |s, io| s.to_s io }
      file << '\n'

      file.puts "### CI Never Built"
      never_built.join("", file) { |s, io| s.to_s io }
      file << '\n'

      file.puts "### Not Active"
      not_within(TIME_WINDOW).join("", file) { |s, io| s.to_s io }
    end
  end

  # Returns an array of shards that do not have CI setup.
  def self.no_ci : Array(Shard)
    with_ci(:none).sort
  end

  # Returns an array of shards that have CI but a built never ran.
  def self.never_built : Array(Shard)
    read.shards.select { |s| !s.ci.none? && !s.last_build }.sort
  end

  # Returns an array of shards that has CI but the last build was over *span* days ago.
  def self.not_within(span : Time::Span | Time::MonthSpan) : Array(Shard)
    read.shards.select { |s| !s.ci.none? && s.last_build && (s.last_build.not_nil! <= span.ago) }.sort
  end

  # Serializes *OUT_FILE* into `self`.
  private def self.read : self
    ShardList.from_yaml File.read OUT_FILE
  end

  # Returns an array of shards that use the given *ci* provider.
  private def self.with_ci(ci : CI) : Array(Shard)
    read.shards.select { |s| s.ci == ci }
  end
end

OptionParser.parse do |parser|
  parser.banner = "Usage: cli [arguments]"
  parser.on("-h", "--help", "Show this help") { puts parser; exit }
  parser.on("-i", "--initialize", "Initializes the shard list") { ShardList.initialize; exit }
  parser.on("-g", "--generate", "Generate the report from the current shard list") { ShardList.generate_report; exit }
  parser.on("-d TYPE", "--delete TYPE", "Removes shards from the README of the given TYPE") do |type|
    shards = case type
             when "no_ci"       then ShardList.no_ci
             when "never_built" then ShardList.never_built
             when "not_active"  then ShardList.not_within TIME_WINDOW
             else                    abort "Invalid type: #{type}"
             end

    # Get an array of each line in the README
    lines = File.read_lines "./README.md", chomp: false

    # Remove the lines that contain an erroneous shard
    lines.reject! do |l|
      shards.any? { |s| l.includes? "#{s.owner}/#{s.name}" }
    end

    # Write the file contents again with the erroneous shards removed.
    File.write "./README.md", lines.join
  end
end
