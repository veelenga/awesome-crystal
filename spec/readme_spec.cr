require "./spec_helper"
require "uri"

readme = Readme.new("./README.md")

# Enable for debug purpose
# File.write("test.html", readme.html)

describe "List of Crystal Awesomness" do
  it "has references in 'https://github.com/path' format" do
    set = readme.find("//li/a/@href") as XML::NodeSet
    set.each do |node|
      ref = node.text as String
      if ref =~ /github.com/
        uri = URI.parse(ref)
        uri.scheme.should eq "https"
        uri.host.should eq "github.com"
        uri.path.should_not be nil
      end
    end
  end

  it "has lower case names" do
    set = readme.find("//ul/li/a") as XML::NodeSet
    set.each do |node|
      name = node.text as String
      ref = node.text as String
      if ref =~ /github.com/
        name.should eq name.downcase
      end
    end
  end

  it "has h1 headers in alphabetical order" do
    set = readme.find("//h1") as XML::NodeSet
    headers = set.map do |node|
      node.text as String
    end
    sorted = headers.sort
    headers.each_with_index do  |header, i|
      header.should eq sorted[i]
    end
  end
end
