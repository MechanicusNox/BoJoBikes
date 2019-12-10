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
    dock_sta.dock_bike(Bike.new)
    expect(dock_sta.release_bike).to be_a(Bike)
  end

  it "should return a working bike" do
    dock_sta = DockingStation.new
    dock_sta.dock_bike(Bike.new)
    bike = dock_sta.release_bike
    expect(bike.working?).to eq(true)
  end

  it "should have a dock bike method" do
    dock_sta = DockingStation.new
    expect(dock_sta).to respond_to (:dock_bike)
  end

  it "should allow someone to see if it has a bike docked" do
    dock_sta = DockingStation.new
    expect(dock_sta).to respond_to (:docked)
  end

  it "should only produce a bike if one is available" do
    dock_sta = DockingStation.new
    expect{dock_sta.release_bike}.to raise_error("No bike at station.")
  end

  it "will raise an error if an attempt is made to dock a bike when full" do
    dock_sta = DockingStation.new
    20.times { dock_sta.dock_bike(Bike.new) }
    expect{dock_sta.dock_bike(Bike.new)}.to raise_error("Station is full.")
  end

  it "allows capacity to be set" do
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  it "has a default capacity of 20" do
    expect(DockingStation.new.DEFAULT_CAPACITY).to eq(20)
  end
end
