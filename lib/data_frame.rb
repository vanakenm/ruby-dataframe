class DataFrame
  def initialize(values = nil)
    @values = values
  end

  def row_number
    @values.size
  end

  def [](index)
    @values[index]
  end

  def col_names
    @values.first.keys
  end

  def col_number
    @values.first.keys.size
  end
end
