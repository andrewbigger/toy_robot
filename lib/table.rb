class Table
  def on_table?(co_ords)
    co_ords[:x].between?(0, 5) && co_ords[:y].between?(0, 5)
  end
end
