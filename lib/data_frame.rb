require 'csv'

class DataFrame
  attr_reader :rows, :headers

  def initialize(csv_file = nil)
    if (csv_file)
      @table = CSV.read(csv_file, headers: true, header_converters: :symbol, converters: :all)
      @rows = @table.map(&:to_h)
      @headers = @table.headers
    else
      @table = nil
    end
  end

  def size
    nrows
  end

  def nrows
    @rows ? @rows.size : 0
  end

  CARS = DataFrame.new("data/cars.csv")
end