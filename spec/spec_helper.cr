require "xml"
require "spec"
require "markdown"

class Readme
  getter html : XML::Node

  def initialize(path : String)
    @html = to_html File.read(path)
  end

  def find(xpath)
    @html.xpath(xpath)
  end

  def get_awesomeness
    find("//ul/li/a").as XML::NodeSet
  end

  def get_refs(selects = nil)
    set = find("//ul/li/a/@href").as XML::NodeSet
    refs = set.map { |node| node.text.as String }
    refs.select! { |x| x =~ selects } if selects
    refs
  end

  def get_groups
    set = find("//ul[li]").as XML::NodeSet
    set.map do |node|
      n = XML.parse(node.to_s).xpath("/ul/li/a[1]/text()").as XML::NodeSet
      n.map { |el| el.text.as String }
    end
  end

  private def to_html(markdown)
    XML.parse_html(%[
    <html>
      #{Markdown.to_html(markdown)}
    </html>
    ])
  end
end
