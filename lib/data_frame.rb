require 'csv'

class DataFrame
  attr_reader :table

  def initialize(csv_file = nil)
    if (csv_file)
      @table = CSV.read(csv_file, headers: true, header_converters: :symbol)
    else
      @table = nil
    end
  end

  def headers
    @table && @table.headers
  end

  def size
    nrows
  end

  def nrows
    @table ? @table.size : 0
  end

  CARS = DataFrame.new("data/cars.csv")
end