require 'minitest/autorun'
require "data_frame"

class TestSortFilter < MiniTest::Test
  def setup
    @data_frame = DataFrame.new("data/cars.csv")
  end

  def test_sort
    refute_nil @data_frame.table
  end
end
