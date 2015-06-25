require "xml"
require "spec"
require "markdown"

class Readme
  getter html

  def initialize(path)
    @html = to_html File.read(path)
  end

  def find(xpath)
    @html.xpath(xpath)
  end

  def get_awesomeness
    find("//ul/li/a") as XML::NodeSet
  end

  def get_refs(select = nil)
    set = find("//ul/li/a/@href") as XML::NodeSet
    refs = set.map { |node| node.text as String }
    refs.select! { |x| x =~ select} if select
    refs
  end

  private def to_html(markdown)
    XML.parse(%[
    <html>
      #{Markdown.to_html(markdown)}
    </html>
    ])
  end
end
