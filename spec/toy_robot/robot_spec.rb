require "spec_helper" 

RSpec.describe ToyRobot::Robot do
  subject { ToyRobot::Robot.new(0) }
  
  it "moves 1 spaces east" do
    2.times { subject.move_east } 
    expect(subject.position_x).to eq(2)
  end 

  it "moves 4 spaces east" do
    3.times { subject.move_east } 
   expect(subject.position_x).to eq(3)
  end

  it "moves 1 spaces west" do
    2.times { subject.move_west }
    expect(subject.position_x).to eq(-2)
  end

  it "moves 3 spaces west" do
    3.times { subject.move_west }
    expect(subject.position_x).to eq(-3)
  end

  it "moves 1 spaces north" do
    2.times { subject.move_north }
    expect(subject.position_y).to eq(2)
  end

  it "moves 3 spaces north" do
    3.times { subject.move_north }
    expect(subject.position_y).to eq(3)
  end

  it "moves 1 spaces south" do
    2.times { subject.move_south }
    expect(subject.position_y).to eq(-2)
  end

  it "moves 4 spaces south" do
    3.times { subject.move_south }
    expect(subject.position_y).to eq(-3)
  end  
end

context "when facing north" do
  subject { ToyRobot::Robot.new(0, 0, "NORTH") }
  
  it "moves north" do
    subject.move
    expect(subject.position_y).to eq(1)
  end 

  it "turns left to face west" do
    subject.turn_left
    expect(subject.direction).to eq("WEST")
  end

  it "turns right to face east" do
    subject.turn_right
    expect(subject.direction).to eq("EAST")
  end
end

context "when facing south" do
  subject { ToyRobot::Robot.new(0, 0, "SOUTH") }

  it "moves south" do
    subject.move
    expect(subject.position_y).to eq(-1)
  end

  it "turns left to face east" do
    subject.turn_left
    expect(subject.direction).to eq("EAST")
  end

  it "turns right to face west" do 
    subject.turn_right 
    expect(subject.direction).to eq("WEST")
  end
end

context "when facing east" do
  subject { ToyRobot::Robot.new(0, 0, "EAST") }

  it "moves east" do
    subject.move
    expect(subject.position_x).to eq(1)
  end

  it "turns left to face north" do
    subject.turn_left
    expect(subject.direction).to eq("NORTH")
  end

  it "turns right to face south" do 
    subject.turn_right 
    expect(subject.direction).to eq("SOUTH")
  end
end


context "when facing west" do
  subject { ToyRobot::Robot.new(0, 0, "WEST") }

  it "moves west" do
    subject.move
    expect(subject.position_x).to eq(-1)
  end

  it "turns left to face south" do
    subject.turn_left
    expect(subject.direction).to eq("SOUTH")
  end

  it "turns right to face north" do 
    subject.turn_right 
    expect(subject.direction).to eq("NORTH")
  end
end

context "#report" do
  subject { ToyRobot::Robot.new(5, 4, "EAST") }
  it "provides the current location and direction of the robot" do 
    expect(subject.report).to eq({
      position_x: 5,
      position_y: 4,
      direction: "EAST"
    })
  end 
end