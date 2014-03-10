require 'rspec'
require 'parcels'

describe("Parcel")  do
  it("should initialize class Parcel with dimensions") do
    test_parcel = Parcel.new(3, 3, 3, 1)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'returns the volume with the volume method' do
    test_parcel = Parcel.new(3,3,3,1)
    test_parcel.volume.should eq(27)
  end

  it 'returns 54 dollars with inputs of 3,3,3,1' do
    test_parcel = Parcel.new(3,3,3,1)
    test_parcel.cost_to_ship.should eq(54)
  end
end
