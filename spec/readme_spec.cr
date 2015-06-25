require "./spec_helper"
require "uri"

readme = Readme.new("./README.md")

# Enable for debug purpose
File.write("readme.html", readme.html)

describe "List of Crystal Awesomeness" do
  it "has references to awesomeness" do
    readme.get_refs(/github/).empty?.should be_false
  end

  it "has references in 'https://github.com/path' format" do
    readme.get_refs(/github/).each do |ref|
      uri = URI.parse(ref)
      uri.scheme.should eq "https"
      uri.host.should eq "github.com"
      uri.path.should_not be nil
    end
  end

  it "hasn't duplicated references" do
    prev = nil
    readme.get_refs(/github/).map do |ref|
      uri = URI.parse(ref)
      host = uri.host as String
      path = uri.path as String | Nil
      "#{host.downcase}#{path.downcase if path}"
    end
      .sort.each do |ref|
        ref.should_not eq prev
        prev = ref
      end
  end

  it "has lower case names" do
    readme.get_awesomeness.each do |node|
      name = node.text as String
      ref = node.text as String
      if ref =~ /github.com/
        name.should eq name.downcase
      end
    end
  end

  it "has alphabetical order" do
    readme.get_groups.each do |group|
      sorted = group.sort
      group.each_with_index do |awesome, i|
        awesome.should eq sorted[i]
      end
    end
  end
end
