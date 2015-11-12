require 'spec_helper'

describe Truck do
let(:truck) {Truck.new(10)}
let(:occupant) {Occupant.new("Tom","Thomson")}
let(:box){Box.new(occupant)}
let(:occupant_2) {Occupant.new("Craig","Felton")}
let(:box_2) {Box.new(occupant_2)}

  describe ".new" do
    it "should create a new truck" do
      expect(truck).to be_a(Truck)
    end
  end

  describe "#full?" do
    it "should return false if the truck is not full" do
      expect(truck.full?).to eq(false)
    end

    it "should return true if the truck is full" do
      truck_2 = Truck.new(2)
      truck_2.capacity << box
      truck_2.capacity << box
      expect(truck_2.full?).to eq(true)
    end
  end

  describe "#add" do
    it "should add a box to the truck" do
      truck.add(box)
      expect(truck.capacity[0]).to be_a(Box)
    end

    it "should increase the box number by one" do
      expect(truck.capacity.size).to eq(0)
      truck.add(box)
      expect(truck.capacity.size).to eq(1)
    end

    it "should not add boxes if truck is full" do
      truck_3 = Truck.new(2)
      truck_3.add(box)
      truck_3.add(box)
      truck_3.add(box)
      expect(truck_3.capacity.size).to eq(2)
    end
  end

  describe "#remove" do
    it "should remove a box from the truck" do
      truck.add(box)
      truck.remove
      expect(truck.capacity.size).to eq(0)
    end
  end

  describe "#unload" do
    it "should remove boxes from a certain owner" do
      truck.add(box)
      truck.add(box)
      truck.add(box)
      truck.add(box_2)
      truck.add(box_2)
      truck.unload(occupant_2)
      expect(truck.capacity.size).to eq(3)
      truck.capacity.each do |box|
        expect(box.box_owner).to_not eq(occupant_2)
        expect(box.box_owner).to eq(occupant)
      end
    end
  end

end
