require 'rails_helper'

RSpec.describe Activity, :type => :model do
  let (:activity) {Activity.new(name: "Pizza Party", description: "Daniel's birthday!", location: "DBC", start_time: DateTime.new(2014,2,5,4,5,0), end_time: DateTime.new(2014,2,5,4,6,30), trip_id: 1, creator_id: 6)}

  describe '#initialize' do
  	it "has an attribute name" do
  		expect(activity.name).to eq("Pizza Party")
  	end

  	it "has an attribute description" do
  		expect(activity.description).to eq("Daniel's birthday!")
  	end

  	it "has an attribute location" do
  		expect(activity.location).to eq("DBC")
  	end

  	it "has an attribute start time" do
  		expect(activity.start_time).to eq(DateTime.new(2014,2,5,4,5,0))
  	end

  	it "has an attribute end time" do
  		expect(activity.end_time).to eq(DateTime.new(2014,2,5,4,6,30))
  	end

  	it "has an attribute trip_id" do
  		expect(activity.trip_id).to eq(1)
  	end

  	it "has an attribute creator_id" do
  		expect(activity.creator_id).to eq(6)
  	end
  end
end
