module ToyRobot
  class Robot 
    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

    attr_reader :posx, :posy, :direction
    
    def initialize(posx = 0, posy = 0, direction = "NORTH")
      @posx = posx
      @posy = posy
      @direction = direction
    end

    def move_east 
      @posx += 1     
    end 
    
    def move_west
      @posx -= 1
    end

    def move_north
      @posy += 1
    end
    
    def move_south
      @posy -= 1
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
        posx: posx,
        posy: posy,
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