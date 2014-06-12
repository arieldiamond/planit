require 'rails_helper'

RSpec.describe TripParticipation, :type => :model do
  let (:participation) { TripParticipation.new(traveler_id: 6, trip_id: 4, transportation_type: "plane", arrival_time: DateTime.new(2014,2,5,4,5,0), departure_time: DateTime.new(2014,2,5,4,6,30)) }

  describe '#initialize' do
  	it "has an attribute traveler_id" do
  		expect(participation.traveler_id).to eq(6)
  	end

  	it "has an attribute trip_id" do
  		expect(participation.trip_id).to eq(4)
  	end

  	it "has an attribute transportation_type" do
  		expect(participation.transportation_type).to eq("plane")
  	end

  	it "has an attribute arrival_time" do
  		expect(participation.arrival_time).to eq(DateTime.new(2014,2,5,4,5,0))
  	end

  	it "has an attribute departure_time" do
  		expect(participation.departure_time).to eq(DateTime.new(2014,2,5,4,6,30))
  	end

  end

  context "#associations" do
    it {should belong_to(:traveler)}
    it {should belong_to(:trip)}
    it {should have_many(:activity_participations).with_foreign_key(:participant_id)}
  end
end
