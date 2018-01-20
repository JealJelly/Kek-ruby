require "test_helper"

class NumberGemJealJellyTest < Minitest::Test
  def test_it_does_something_useful
    number = NumberGemJealJelly::Number.new
    assert_equal 20, number.+(10, 10)
  end
end
