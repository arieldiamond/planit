require 'rails_helper'

RSpec.describe Poll, :type => :model do
  let (:poll) {Poll.new(name: "Location", trip_id: 1, creator_id: 1)}

  describe '#initialize' do
  	it "has an attribute name" do
  		expect(poll.name).to eq("Location")
  	end

  	it "has a trip_id" do
  		expect(poll.trip_id).to eq(1)
  	end

  	it "has a creator_id" do
  		expect(poll.creator_id).to eq(1)
  	end
  end

  context "#associations" do
  	it {should have_many(:options)}
  	it {should belong_to(:trip)}
  	it {should belong_to(:creator)}
  end
end