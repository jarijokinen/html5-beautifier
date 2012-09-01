class String
  def beautify(indent_length = 2, indent_character = " ", exclude_elements = nil)
    indent_string = indent_character * indent_length

    if !exclude_elements
      exclude_elements = [ 
        "li", "a", "span", "p", "td", "small", "strong", "em", "br", 
        "h1", "h2", "h3", "h4", "h5", "h6"
      ]
    end
    exclude_elements = exclude_elements.map { |e| "name()!='#{e}'" }

    xslt_file = File.join(File.dirname(__FILE__), "..", "..", "xslt", "html5-beautifier.xslt")
    xslt_content = File.read(File.expand_path(xslt_file))
    xslt_content.gsub!("__INDENT_STRING__", indent_string)
    xslt_content.gsub!("__EXCLUDE_ELEMENTS__", exclude_elements.join(" and "))
    doc = Nokogiri::HTML(self.gsub("\r", ""))
    xslt = Nokogiri::XSLT(xslt_content)
    html = xslt.apply_to(doc)
    html.gsub!(/<script (.+?)\/>/, '<script \1></script>')
    html
  end
end
