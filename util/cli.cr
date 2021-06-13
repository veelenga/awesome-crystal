require "./readme"
require "yaml"
require "json"
require "http/client"
require "colorize"
require "option_parser"
require "log"

Log.setup_from_env default_sources: "awesome-crystal.cli"

private LOGGER = ::Log.for "awesome-crystal.cli"

# A `Shard` must have been built sometime in this span in order to be considered active.
TIME_WINDOW = 1.year

# Represents a version control provider.
enum VC
  Github
  Gitlab

  # Returns the protocol and domain for `self`.
  def host : String
    case self
    when .github? then "https://github.com"
    when .gitlab? then "https://gitlab.com"
    end.not_nil!
  end
end

# Represents a specific `CIBuildResolver`.
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

# Represents the latest build of a shard for a given `CIBuildResolver`.
#
# Exposes what `CI` provider it's related to, when it was last built, and if the shard was transfered.
record CIRun, provider : CI, built_at : Time? = nil, transfered : Bool = false do
  include Comparable(self)

  def <=>(other : self) : Int32
    case {other.transfered, @transfered}
    when {false, true} then return 1
    when {true, false} then return -1
    end

    other_last_built = other.built_at
    built_at = @built_at

    case {other_last_built, built_at}
    when {Nil, Time} then return 1
    when {Time, Nil} then return -1
    when {Nil, Nil}  then return 0
    end

    built_at.not_nil! <=> other_last_built.not_nil!
  end
end

# Attempts to resolve the latest `CIRun`, if possible, for a specific `CI` provider.
abstract struct CIBuildResolver
  private record Build, created_at : Time? do
    include JSON::Serializable
  end

  # Yields each `CIBuildResolver` implementation.
  def self.each_provider(owner : String, name : String, & : self ->) : Nil
    {% for provider in CIBuildResolver.all_subclasses.reject &.abstract? %}
      yield {{provider.id}}.new owner, name
    {% end %}
  end

  # Returns the count of unique `CIBuildResolver`s.
  def self.provider_count : Int32
    {{CIBuildResolver.all_subclasses.reject(&.abstract?).size}}
  end

  def initialize(@owner : String, @name : String); end

  # Returns the `CI` member related to `self`.
  abstract def member : CI

  # Returns the latest `CIRun` for the related `CI` `#member`.
  #
  # Returns `nil` if it could not be determined.
  def latest_run : CIRun?
    response = self.client.exec self.request

    if response.status.redirection?
      return CIRun.new self.member, transfered: true
    end

    if !response.status.success?
      LOGGER.debug { "Request failed: #{response.body.strip}" }
      return
    end

    if last_built = self.last_built response
      LOGGER.debug { "Last built #{(Time.utc - last_built).days} days ago" }
    else
      LOGGER.debug { "Was never built" }
    end

    CIRun.new self.member, last_built
  rescue ex : Exception
    LOGGER.debug { "Failed to determine latest run: #{ex.message.try &.strip}" }
    return
  end

  # Returns the API domain for `self`.
  protected abstract def api_domain : String

  # Returns an `HTTP::Request` used to fetch the CI builds related to `self`.
  protected abstract def request : HTTP::Request

  # Returns the `Time` of that latest build, or `nil` if it was never built.
  protected abstract def last_built(response : HTTP::Client::Response) : Time?

  # Returns the `HTTP::Client` used to fetch the CI builds.
  protected def client : HTTP::Client
    HTTP::Client.new self.api_domain, tls: true
  end
end

# :inherit:
struct Actions < CIBuildResolver
  # :inherit:
  def member : CI
    CI::Actions
  end

  protected def api_domain : String
    "api.github.com"
  end

  protected def last_built(response : HTTP::Client::Response) : Time?
    Array(Build).from_json(response.body, root: "workflow_runs").first?.try &.created_at
  end

  protected def request : HTTP::Request
    HTTP::Request.new "GET", "/repos/#{@owner}/#{@name}/actions/runs", headers: HTTP::Headers{"Accept" => "application/vnd.github.v3+json"}
  end

  protected def client : HTTP::Client
    client = super

    if (gh_username = ENV["GH_USERNAME"]?) && (gh_token = ENV["GH_TOKEN"]?)
      client.basic_auth(gh_username, gh_token)
    else
      raise RuntimeError.new "Missing GitHub credentials ENV vars. Define GH_USERNAME and GH_TOKEN in order to authenticate with the GitHub API.\n\nNOTE: The GH token does not need to have any permissions."
    end

    client
  end
end

# :inherit:
struct Circle < CIBuildResolver
  private record Build, start_time : Time? do
    include JSON::Serializable
  end

  def member : CI
    CI::Circle
  end

  # :inherit:
  protected def api_domain : String
    "circleci.com"
  end

  protected def last_built(response : HTTP::Client::Response) : Time?
    Array(Build).from_json(response.body).find(&.start_time).try &.start_time
  end

  protected def request : HTTP::Request
    HTTP::Request.new "GET", "/api/v1.1/project/gh/#{@owner}/#{@name}", headers: HTTP::Headers{"Accept" => "application/json"}
  end
end

# :inherit:
struct Drone < CIBuildResolver
  private struct Build
    include JSON::Serializable

    @[JSON::Field(converter: Time::EpochConverter)]
    getter started : Time
  end

  # :inherit:
  def member : CI
    CI::Drone
  end

  protected def api_domain : String
    "cloud.drone.io"
  end

  protected def last_built(response : HTTP::Client::Response) : Time?
    Array(Build).from_json(response.body).find(&.started).try &.started
  end

  protected def request : HTTP::Request
    HTTP::Request.new "GET", "/api/repos/#{@owner}/#{@name}/builds"
  end
end

# :inherit:
struct Gitlab < CIBuildResolver
  # :inherit:
  def member : CI
    CI::Gitlab
  end

  protected def api_domain : String
    "gitlab.com"
  end

  protected def last_built(response : HTTP::Client::Response) : Time?
    Array(Build).from_json(response.body).find(&.created_at).try &.created_at
  end

  protected def request : HTTP::Request
    HTTP::Request.new "GET", "/api/v4/projects/#{@owner}%2F#{@name}/pipelines"
  end
end

# :inherit:
abstract struct AbstractTravis < CIBuildResolver
  private record Build, last_build_started_at : Time? do
    include JSON::Serializable
  end

  protected def last_built(response : HTTP::Client::Response) : Time?
    Build.from_json(response.body, root: "repo").last_build_started_at
  end

  protected def request : HTTP::Request
    HTTP::Request.new "GET", "/repos/#{@owner}/#{@name}", headers: HTTP::Headers{"Accept" => "application/vnd.travis-ci.2.1+json"}
  end
end

# :inherit:
struct Travis < AbstractTravis
  # :inherit:
  def member : CI
    CI::Travis
  end

  protected def api_domain : String
    "api.travis-ci.org"
  end
end

# :inherit:
struct TravisPro < AbstractTravis
  # :inherit:
  def member : CI
    CI::TravisPro
  end

  protected def api_domain : String
    "api.travis-ci.com"
  end
end

# Handles logic related to resolving what `CI` provider a given `Shard` uses.
struct CIResolver
  # Shards that are exempt from reporting.
  # Mainly for utilities and plugins that
  # can't really be tested autonomously.
  private EXEMPT_SHARDS = {
    "bcardiff/crystal-ast-helper",
    "crenv/crenv",
    "crystal-community/crystal-patterns",
    "crystal-lang-tools/crystal-ide",
    "crystal-lang-tools/Crystal.tmbundle",
    "crystal-lang-tools/geany-crystal",
    "crystal-lang-tools/sublime-crystal",
    "crystal-lang-tools/vscode-crystal-lang",
    "crystal-lang/clang.cr",
    "crystal-lang/crystal-mysql",
    "dotmilk/emacs-crystal-mode",
    "elorest/cry",
    "elorest/vim-slang",
    "exercism/crystal",
    "g3ortega/vscode-crystal",
    "ilanpillemer/acmecrystal",
    "ilmanzo/crystal-koans",
    "jhass/DeBot",
    "juanedi/crystal-spacemacs-layer",
    "marciogm/asdf-crystal",
    "ruivieira/crystal-base",
    "Sija/crystal-dash-docset",
    "veelenga/crystal-zsh",
    "vscode-crystal-lang",
    "will/crystal-pg",
  }

  def initialize(@owner : String, @name : String)
  end

  # Resolve the latest `CIRun`
  def resolve : CIRun
    if EXEMPT_SHARDS.includes? "#{@owner}/#{@name}"
      return CIRun.new :exempt
    end

    build_channel = Channel(CIRun?).new
    builds = Array(CIRun).new

    CIBuildResolver.each_provider @owner, @name do |provider|
      spawn do
        LOGGER.context.set provider: provider.member.to_s

        if build = provider.latest_run
          build_channel.send build
        else
          build_channel.send nil
        end
      end
    end

    CIBuildResolver.provider_count.times do
      if build = build_channel.receive
        builds << build
      end
    end

    builds.sort!.last? || CIRun.new :none
  end
end

# Represents a shard within `README.md`.
class Shard
  include YAML::Serializable
  include Comparable(self)

  # The owner of the shard's repo.
  #
  # Can either be a user or organization.
  getter owner : String

  # The name of the shard's repo.
  getter name : String

  # Which `VC` `self` uses.
  getter vc : VC

  # Which `CI` `self` uses.
  getter ci : CI

  @[YAML::Field(emit_null: true)]
  # The last time `self` was built.
  #
  # TODO: Make this the last time `self` was _successfully_ built; would be more useful in the future.
  getter last_built : Time?

  # Returns `true` if the shard has been transfered.
  # E.g. because of a `#owner` name change.
  getter? transfered : Bool = false

  # Try to resolve the `ci` of `self` by looking each shard up via
  # each CI provider's API.
  def initialize(@owner : String, @name : String, @vc : VC)
    LOGGER.info { "Adding #{@owner}/#{@name}" }

    latest_build = CIResolver.new(@owner, @name).resolve

    @ci = latest_build.provider
    @last_built = latest_build.built_at
    @transfered = latest_build.transfered

    if @ci.exempt?
      LOGGER.notice { "#{@owner}/#{@name} is exempt\n".colorize(:light_green).to_s }
    elsif lb = @last_built
      LOGGER.info { "#{@owner}/#{@name} uses #{@ci} and was last built #{(Time.utc - lb).days} days ago\n" }
    elsif !@transfered
      LOGGER.warn { "#{@owner}/#{@name} was never built!\n".colorize(:red).to_s }
    elsif @transfered
      LOGGER.warn { "#{@owner}/#{@name} has been transfered!\n".colorize(:yellow).to_s }
    end
  end

  # Returns `true` if `self`'s was `#last_built` more the `TIME_WINDOW` ago.
  def inactive? : Bool
    return false unless last_built = @last_built
    last_built <= TIME_WINDOW.ago
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

    File.open OUT_FILE, "w" do |file|
      shard_list.to_yaml file
    end

    generate_report

    shard_list
  end

  # Generates the report file based on the current `OUT_FILE`
  def self.generate_report : Nil
    File.open(REPORT_FILE, "w") do |file|
      file.puts "### No CI"
      self.no_ci.join(file) { |s, io| s.to_s io }
      file << '\n'

      file.puts "### CI Never Built"
      self.never_built.join(file) { |s, io| s.to_s io }
      file << '\n'

      file.puts "### Not Active"
      self.inactive.join(file) { |s, io| s.to_s io }
      file << '\n'

      file.puts "### Transfered"
      self.transfered.join(file) { |s, io| s.to_s io }
    end
  end

  # Returns an array of shards that do not have CI setup.
  def self.no_ci : Array(Shard)
    self.shards.select { |s| s.ci.none? && !s.transfered? }
  end

  # Returns an array of shards that have CI but a built never ran.
  def self.never_built : Array(Shard)
    self.shards.select { |s| !s.ci.none? && !s.last_built && !s.transfered? }.sort
  end

  # Returns an array of shards that has CI but are no longer considered
  #  active due to last CI build time being over `TIME_WINDOW` ago.
  def self.inactive : Array(Shard)
    self.shards.select { |s| !s.ci.none? && !s.transfered? && s.inactive? }.sort
  end

  # Returns an array of shards that have been transfered.
  def self.transfered : Array(Shard)
    self.shards.select { |s| s.transfered? }
  end

  private def self.shards : Array(Shard)
    self.read.shards.reject! &.ci.exempt?
  end

  # Serializes *OUT_FILE* into `self`.
  private def self.read : self
    ShardList.from_yaml File.read OUT_FILE
  end
end

private enum ShardReportClass
  NO_CI
  NEVER_BUILT
  NOT_ACTIVE
  TRANSFERED

  def shards : Array(Shard)
    case self
    in .no_ci?       then ShardList.no_ci
    in .never_built? then ShardList.never_built
    in .not_active?  then ShardList.inactive
    in .transfered?  then ShardList.transfered
    end
  end
end

OptionParser.parse do |parser|
  parser.banner = "Usage: cli [arguments]"
  parser.on("-h", "--help", "Show this help") { puts parser; exit }
  parser.on("-i", "--initialize", "Initializes the shard list") { ShardList.initialize; exit }
  parser.on("-g", "--generate", "Generate the report from the current shard list") { ShardList.generate_report; exit }
  parser.on("-d TYPE", "--delete TYPE", "Removes shards from the README of the given TYPE") do |type|
    shards = ShardReportClass.parse(type).shards

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
