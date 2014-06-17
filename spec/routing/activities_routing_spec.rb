require "rails_helper"

RSpec.describe ActivitiesController, :type => :routing do
  describe "routing" do
    let(:trip) {Trip.create!(name: "Ariel's Birthday", description: "Because today is a really convenient day to have a birthday", location: "DBC", start_date: DateTime.new(2014,6,19), end_date: DateTime.new(2014,6,20), creator_id: 1)}

    it "routes to #index" do
      expect(:get => "/trips/1/activities").to route_to("action"=>"index", "controller"=>"activities", "trip_id"=>"1")
    end

    it "routes to #new" do
      expect(:get => "/trips/1/activities/new").to route_to("action"=>"new", "controller"=>"activities", "trip_id"=>"1")
    end

    it "routes to #show" do
      expect(:get => "/activities/1").to route_to("activities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/activities/1/edit").to route_to("activities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/trips/1/activities").to route_to("action"=>"create", "controller"=>"activities", "trip_id"=>"1")
    end

    it "routes to #update" do
      expect(:put => "/activities/1").to route_to("activities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/activities/1").to route_to("activities#destroy", :id => "1")
    end

  end
end
