require 'minitest/autorun'
require "data_frame"

class TestDataFrame < MiniTest::Test
  def test_init_empty
    df = DataFrame.new
    refute_nil df
  end

  def test_init_value
    df = DataFrame.new([{dist: 100, speed: 120}, {dist: 80, speed: 140}])
    refute_nil df
  end
  
  def test_row_number
    df = DataFrame.new([{dist: 100, speed: 120}, {dist: 80, speed: 140}])
    assert_equal 2, df.row_number
  end

  def test_col_number
    df = DataFrame.new([{dist: 100, speed: 120}, {dist: 80, speed: 140}])
    assert_equal 2, df.col_number
  end
  
  def test_access_data
    df = DataFrame.new([{dist: 100, speed: 120}, {dist: 80, speed: 140}])
    assert_equal({dist: 100, speed: 120}, df[0])
  end

  def test_colnames
    df = DataFrame.new([{dist: 100, speed: 120}, {dist: 80, speed: 140}])
    assert_equal([:dist, :speed], df.col_names)
  end
end
