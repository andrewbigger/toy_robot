class Table
  def initialize(width = 5, height = 5)
    @width = width
    @height = height
  end

  def on_table?(co_ords)
    co_ords[:x].between?(0, @width) && co_ords[:y].between?(0, @height)
  end
end
