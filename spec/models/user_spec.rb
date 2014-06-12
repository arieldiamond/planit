require 'rails_helper'

RSpec.describe User, :type => :model do
  let (:user) {User.new(email: "cplanit@planit.com", first_name: "Captain", last_name: "Planit", phone: "773-981-3133") }

  context '#initialize' do
  	it "has an attribute email" do
  		expect(user.email).to eq("cplanit@planit.com")
  	end

  	it "has an attribute first name" do
  		expect(user.first_name).to eq("Captain")
  	end

  	it "has an attribute last name" do
  		expect(user.last_name).to eq("Planit")
  	end

  	it "has an attribute phone" do
  		expect(user.phone).to eq("773-981-3133")
  	end
  end

  context "#associations" do
    it {should have_many(:trip_participations)}
    it {should have_many(:trips).through(:trip_participations).with_foreign_key(:traveler_id)}
    it {should have_many(:created_activities)}
    it {should have_many(:created_trips)}
  end
end
