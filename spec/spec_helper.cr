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

  private def to_html(markdown)
    XML.parse(%[
    <html>
      #{Markdown.to_html(markdown)}
    </html>
    ])
  end
end
