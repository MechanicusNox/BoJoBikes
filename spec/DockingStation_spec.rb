require 'BoJoB'

describe DockingStation do

  it "should have a class called DockingStation" do
    dock_sta = DockingStation.new
    expect(dock_sta).to be_a DockingStation
  end

  it "should have a release bike method" do
    dock_sta = DockingStation.new
    expect(dock_sta).to respond_to (:release_bike)
  end

  it "should return a bike when release_bike is called" do
    dock_sta = DockingStation.new
    expect(dock_sta.release_bike).to be_a(Bike)
  end

  it "should return a working bike" do
    dock_sta = DockingStation.new
    bike = dock_sta.release_bike
    expect(bike.working?).to eq(true)
  end
end
