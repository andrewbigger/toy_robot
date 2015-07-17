class Robot
  include Behaviour::Pivot
  include Behaviour::Movement

  def initialize(opts)
    @position = opts[:position]
    @orientation = opts[:orientation]
    @table = Table.new(opts[:table_width], opts[:table_length])
  end

  def left
    @orientation = next_direction(:left)
  end

  def right
    @orientation = next_direction(:right)
  end

  def move
    if @table.on_table?(next_position)
      @position = next_position
    else
      puts 'WARNING: Movement would have forced robot into an abyss'
    end
  end
end
