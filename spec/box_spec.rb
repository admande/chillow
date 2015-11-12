require 'spec_helper'

describe Box do
let(:box) {Box.new(Occupant.new("Adam","Mande"))}

  describe ".new" do
    it "should create a new box object" do
      expect(box).to be_a(Box)
    end
  end
end
