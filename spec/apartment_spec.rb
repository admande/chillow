require 'spec_helper'

describe Apartment do

lease_start_date = Date.parse("2015/1/1")
lease_end_date = Date.parse("2015/6/30")

let(:apartment) {Apartment.new("74 Bellevue Street","Malden",29388,800,lease_start_date,lease_end_date)}
let(:occupant) {Occupant.new("Craig","Johnson")}

  describe ".new" do
    it "should create a new dwelling object" do
      expect(apartment).to be_a(Apartment)
    end

    it "should have an address" do
      expect(apartment.address).to eq("74 Bellevue Street")
    end

    it "should have a city or town" do
      expect(apartment.city_or_town).to eq("Malden")
    end

    it "should have a zip_code" do
      expect(apartment.zip_code).to eq(29388)
    end

    it "should have a monthly rent" do
      expect(apartment.rent).to eq(800)
    end

    it "should have a lease start date" do
      expect(apartment.lease_start_date).to eq(Date.parse("2015/1/1"))
    end

    it "should have a lease end date" do
      expect(apartment.lease_end_date).to eq(Date.parse("2015/6/30"))
    end
  end

  describe "#full?" do
    it "should return false if the apartment is not full" do
      apartment.max_capacity = 5
      expect(apartment.full?).to eq(false)
    end

    it "should return true if the apartment is full" do
      apartment.max_capacity = 2
      apartment.capacity << Occupant.new("Carl","Carlson")
      apartment.capacity << Occupant.new("Richard","Richardson")
      expect(apartment.full?).to eq(true)
    end
  end

  describe "#add" do
    it "should add an occupant to the apartment" do
      apartment.add(occupant)
      expect(apartment.capacity[0]).to be_a(Occupant)
    end

    it "should increase the occupants by one" do
      expect(apartment.capacity.size).to eq(0)
      apartment.add(occupant)
      expect(apartment.capacity.size).to eq(1)
    end
  end

  describe "#remove" do
    it "should remove an occupant from the apartment" do
      apartment.add(occupant)
      apartment.remove
      expect(apartment.capacity.size).to eq(0)
    end
  end
end
