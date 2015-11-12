require 'spec_helper'

describe House do
let(:house) {House.new("74 Bellevue Street","Malden",29388,600000)}

  describe ".new" do
    it "should create a new house object" do
      expect(house).to be_a(House)
    end

    it "should have an address" do
      expect(house.address).to eq("74 Bellevue Street")
    end

    it "should have a city or town" do
      expect(house.city_or_town).to eq("Malden")
    end

    it "should have a zip_code" do
      expect(house.zip_code).to eq(29388)
    end

    it "should have an asking price" do
      expect(house.asking_price).to eq(600000)
    end
  end
end
