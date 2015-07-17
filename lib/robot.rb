class Robot
  include Behaviour::Pivot
  include Behaviour::Movement

  def initialize(opts)
    @position = opts[:position]
    @orientation = opts[:orientation]
    @table = Table.new
  end

  def left
    @orientation = next_direction(:left)
  end

  def right
    @orientation = next_direction(:right)
  end

  def move
    @position = next_position if @table.on_table?(next_position)
  end
end
