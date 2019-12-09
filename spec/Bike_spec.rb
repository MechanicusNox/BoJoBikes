require 'BoJoB'

describe Bike do

  it "has a working? method" do
    bike =  Bike.new
    expect(bike).to respond_to(:working?)
  end

end
