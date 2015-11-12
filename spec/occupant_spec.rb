require 'spec_helper'

describe Occupant do
let(:occupant) {Occupant.new("Craig","Johnson")}
  describe ".new" do
    it "it should create a new occupant" do
      expect(occupant).to be_a(Occupant)
    end

    it "should have a first name" do
      expect(occupant.first_name).to eq("Craig")
    end

    it "should have a last name" do
      expect(occupant.last_name).to eq("Johnson")
    end
  end
end
