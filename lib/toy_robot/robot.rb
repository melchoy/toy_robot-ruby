module ToyRobot
  class Robot 
    attr_reader :position_x, :position_y
    
    def initialize(x = 0, y = 0)
      @position_x = x
      @position_y = y
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

  end
end