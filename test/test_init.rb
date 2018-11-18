require 'minitest/autorun'
require "data_frame"

class TestInit < MiniTest::Test
  def test_initialize_csv
    @data_frame = DataFrame.new("data/cars.csv")
    refute_nil @data_frame.table
  end
  
  def test_initialize_empty
    @data_frame = DataFrame.new
    refute_nil @data_frame
    assert_nil @data_frame.table
    assert_equal 0, @data_frame.nrows
  end

  def test_rows
    @data_frame = DataFrame.new("data/cars.csv")
    assert_equal 50, @data_frame.size
    assert_equal 50, @data_frame.nrows
  end
  
  def test_headers
    @data_frame = DataFrame.new("data/cars.csv")
    assert_equal [:"", :speed, :dist], @data_frame.headers    
  end
end