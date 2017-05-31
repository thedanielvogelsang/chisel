
class MarkdownParser

  def parse(new_line_text)
    if new_line_text.include?("\n") == false
      new_line_text.insert(0, "<p>")
      new_line_text.insert(-1, "</p>")
    elsif new_line_text.include?("\n") && new_line_text[-2] != '\n'
      new_line_text.insert(0, "<p>")
      new_line_text.insert(-1, "</p>")
    elsif new_line_text.include?("\n\n") && new_line_text
    end
    new_line_text
  end
end
