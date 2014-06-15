require 'rails_helper'

RSpec.describe "Activities", :type => :request do


  let(:valid_trip_attributes) {
    # skip("Add a hash of attributes valid for your model")
    {name: "Ariel's Birthday", description: "Because today is a really convenient day to have a birthday", location: "DBC", start_date: DateTime.new(2014,6,19), end_date: DateTime.new(2014,6,20), creator_id: 1}
  }

  describe "GET /activities" do
    it "works! (now write some real specs)" do
    	pending ("HELP I DON'T UNDERSTAND RSPEC")
    	Trip.create!(valid_trip_attributes)
      get trip_activities_path(trip_id: 1)
      expect(response.status).to be(200)
    end
  end
end
