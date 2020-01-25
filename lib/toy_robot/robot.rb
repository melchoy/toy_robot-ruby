module ToyRobot
  class Robot 
    attr_reader :position_x, :position_y
    
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

  end
end