module Behaviour
  module Movement
    POSITION_ADJUSTMENT = {
      x: { north: 0, east: 1, south: 0, west: -1 },
      y: { north: 1, east: 0, south: -1, west: 0 }
    }

    def next_position
      {
        x: @position[:x] + POSITION_ADJUSTMENT[:x][@orientation],
        y: @position[:y] + POSITION_ADJUSTMENT[:y][@orientation]
      }
    end
  end
end
