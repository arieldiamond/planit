require 'rails_helper'

RSpec.describe Trip, :type => :model do
  let (:trip) {Trip.new(name: "Reunion", description: "It's about time!", location: "Vermont", start_date: DateTime.new(2014,2,3), end_date: DateTime.new(2014,2,11), creator_id: 1) }

  describe '#initialize' do
  	it "has an attribute name" do
  		expect(trip.name).to eq("Reunion")
  	end

  	it "has an attribute description" do
  		expect(trip.description).to eq("It's about time!")
  	end

  	it "has an attribute location" do
  		expect(trip.location).to eq("Vermont")
  	end

  	it "has an attribute start date" do
  		expect(trip.start_date).to eq(DateTime.new(2014,2,3))
  	end

  	it "has an attribute end date" do
  		expect(trip.end_date).to eq(DateTime.new(2014,2,11))
  	end

  	it "has an attribute creator_id" do
  		expect(trip.creator_id).to eq(1)
  	end
  end
end
