require_relative "../movie.rb"

RSpec.describe Theater do
  let(:this_theater) {Theater.new(1000)}
  describe ".new" do
    it "should require a number of seats" do
      expect(this_theater.seats).to eq(1000)
    end
  end

  describe "#patrons" do
    it "should have an amount of attendees with each instance" do
      expect(this_theater.patrons(396)).to eq(396)
    end
  end

  describe "#admit!" do
    it "should admit the number of people in a given instance" do
      
    end
  end
end
