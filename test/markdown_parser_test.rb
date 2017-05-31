require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/markdown_parser'

class MarkdownParserTest < Minitest::Test

  def test_it_wraps_paragraphs_with_p
    mp = MarkdownParser.new
    result = mp.parse("This is the first line of the paragraph.")
    expected = "<p>This is the first line of the paragraph.</p>"
    assert_equal expected, result
  end

  def test_it_splits_at_new_line
    mp = MarkdownParser.new
    result = mp.parse("This is the first line of the paragraph.\nThis is the second line of the same paragraph.")
    expected = "<p>This is the first line of the paragraph.\nThis is the second line of the same paragraph.</p>"
    assert_equal expected, result
  end

  def test_multiple_line_paragraphs
    mp = MarkdownParser.new
    result = mp.parse("This is the first line of the first paragraph.\n\nThis is the first line of the second paragraph.")
    expected = "<p>This is the first line of the frist paragraph.</p>\n\n<p>This it the first line of the second paragraph.</p>"
    assert_equal expected, result
  end
end
