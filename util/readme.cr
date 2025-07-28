require "xml"
require "markd"

class Readme
  getter html : XML::Node
  getter path : String

  def initialize(@path : String = "./README.md")
    @html = to_html File.read(@path)
  end

  def find(xpath)
    @html.xpath(xpath)
  end

  def awesomeness
    find("//ul/li/a").as XML::NodeSet
  end

  def refs(selects = nil)
    set = find("//ul/li/a[1]/@href").as XML::NodeSet
    refs = set.map { |node| node.text.as String }
    refs.select! { |x| x =~ selects } if selects
    refs
  end

  def groups
    set = find("//ul[li]").as XML::NodeSet
    set.map do |node|
      list_items = node.xpath("./li").as XML::NodeSet
      list_items.map do |li|
        first_link = li.xpath("./a[1]").as XML::NodeSet
        first_link.first?.try(&.content) || ""
      end.reject(&.empty?)
    end
  end

  private def to_html(markdown)
    XML.parse_html %[
      <html>
        #{Markd.to_html(markdown)}
      </html>
    ]
  end
end
