require 'rails_helper'

RSpec.describe ActivityParticipation, :type => :model do
  let (:participation) { ActivityParticipation.new(trip_participation_id: 7, activity_id: 1) }

  describe '#initialize' do
  	it "has an attribute trip_participation_id" do
  		expect(participation.trip_participation_id).to eq(7)
  	end

  	it "has an attribute activity_id" do
  		expect(participation.activity_id).to eq(1)
  	end
  end

  context "#associations" do
  	it {should belong_to(:trip_participation)}
  	it {should belong_to(:activity)}
  end
end
