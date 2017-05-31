require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/markdown_parser'

class MarkdownParserTest < Minitest::Test

  def test_it_splits_at_new_line
    mp = MarkdownParser.new
    result = mp.parse("This is the first line of the paragraph.")
    expected = "<p>This is the first line of the paragraph.</p>"
    assert_equal expected, result
  end

end
