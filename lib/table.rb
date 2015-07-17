class Table
  def initialize(width = 5, length = 5)
    @width = width
    @length = length
  end

  def on_table?(co_ords)
    co_ords[:x].between?(0, @width) && co_ords[:y].between?(0, @length)
  end
end
