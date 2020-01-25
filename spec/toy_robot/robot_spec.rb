require "spec_helper" 

RSpec.describe ToyRobot::Robot do
  subject { ToyRobot::Robot.new(0) }
  
  it "moves 1 spaces east" do
    1.times { subject.move_east } 
    expect(subject.position_x).to eq(1)
  end 

  it "moves 4 spaces east" do
    3.times { subject.move_east } 
   expect(subject.position_x).to eq(3)
  end

  it "moves 1 spaces west" do
    1.times { subject.move_west }
    expect(subject.position_x).to eq(-1)
  end

  it "moves 3 spaces west" do
    3.times { subject.move_west }
    expect(subject.position_x).to eq(-3)
  end

  it "moves 1 spaces north" do
    1.times { subject.move_north }
    expect(subject.position_y).to eq(1)
  end

  it "moves 3 spaces north" do
    3.times { subject.move_north }
    expect(subject.position_y).to eq(3)
  end

  it "moves 1 spaces south" do
    1.times { subject.move_south }
    expect(subject.position_y).to eq(-1)
  end

  it "moves 4 spaces south" do
    3.times { subject.move_south }
    expect(subject.position_y).to eq(-3)
  end

end