module ToyRobot
  class Table

    def initialize(columns, rows)
      @columns = columns
      @rows = rows
    end

    def valid_position?(posx, posy)
      posx >= 0 && posx < @columns && 
      posy >= 0 && posy < @rows
    end

  end 
end