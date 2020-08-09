# frozen_string_literal: true

# nodoc

require 'minitest/autorun'

class TestParser < Minitest::Test
  def setup
    @tokenizer = Tokenizer.new
    @parser = Parser.new
  end

  def parse(markdown)
    @parser.parse(@tokenizer.tokenize(markdown))
  end

  def test_simple
    body_node = parse("__Foo__ and *text*.\n\nAnother para.")
    assert_equal body_node.consumed, 14
  end
end
