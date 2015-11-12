require 'spec_helper'

describe Dwelling do
let(:dwelling) {Dwelling.new("74 Bellevue Street","Malden",29388)}

  describe ".new" do
    it "should create a new dwelling object" do
      expect(dwelling).to be_a(Dwelling)
    end

    it "should have an address" do
      expect(dwelling.address).to eq("74 Bellevue Street")
    end

    it "should have a city or town" do
      expect(dwelling.city_or_town).to eq("Malden")
    end

    it "should have a zip_code" do
      expect(dwelling.zip_code).to eq(29388)
    end
  end
end
