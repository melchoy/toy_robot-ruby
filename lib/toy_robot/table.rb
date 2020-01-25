module ToyRobot
  class Table

    def initialize(columns, rows)
      @columns = columns
      @rows = rows
    end

    def valid_position?(position_x, position_y)
      position_x >= 0 && position_x < @columns && 
      position_y >= 0 && position_y < @rows
    end

  end 
end