module ToyRobot
  class Robot 
    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

    attr_reader :position_x, :position_y, :direction
    
    def initialize(position_x = 0, position_y = 0, direction = "NORTH")
      @position_x = position_x
      @position_y = position_y
      @direction = direction
    end

    def move_east 
      @position_x += 1     
    end 
    
    def move_west
      @position_x -= 1
    end

    def move_north
      @position_y += 1
    end
    
    def move_south
      @position_y -= 1
    end

    def move
      send("move_#{@direction.downcase}")
    end

    def turn_left
      turn(:left)
    end

    def turn_right
      turn(:right)
    end

    def report
      {
        position_x: position_x,
        position_y: position_y,
        direction: direction
      }
    end

    private
    
    def turn(turn_direction)
      index = DIRECTIONS.index(@direction)
      rotations = turn_direction == :right ? 1 : -1 
      @direction = DIRECTIONS.rotate(rotations)[index]
    end

  end
end