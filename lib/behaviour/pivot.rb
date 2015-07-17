module Behaviour
  module Pivot
    DIRECTIONS = {
      left:  { north: :west, east: :north, south: :east, west: :south },
      right: { north: :east, east: :south, south: :west, west: :north }
    }

    def next_direction(by_turning)
      DIRECTIONS[by_turning][@orientation]
    end
  end
end
