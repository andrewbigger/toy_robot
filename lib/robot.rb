class Robot
  include Behaviour::Pivot

  def initialize(opts)
    @orientation = opts[:orientation]
  end

  def left
    @orientation = next_direction(:left)
  end

  def right
    @orientation = next_direction(:right)
  end
end
