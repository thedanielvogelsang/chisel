
class MarkdownParser

  def parse(new_line_text)
    if new_line_text
      new_line_text.insert(0, "<p>")
      new_line_text.insert(-1, "</p>")
    end
    new_line_text
  end
end
