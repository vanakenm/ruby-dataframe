require 'minitest/autorun'
require "check"
require "df"

class TestCheck < MiniTest::Test
  def test_add
    a = 2
    b = 3
    result = add(a, b)
    assert_equal 5, result
  end
end
