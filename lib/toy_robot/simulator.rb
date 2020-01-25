module ToyRobot
  class Simulator
    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def place(posx, posy, facing)
      return unless @table.valid_position?(posx, posy)

      @robot = Robot.new(posx, posy, facing)
    end

  end
end