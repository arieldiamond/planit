require 'rails_helper'

RSpec.describe "trips/new", :type => :view do
  before(:each) do
    assign(:trip, Trip.new(
      :name => "MyString",
      :description => "MyString",
      :location => "MyString",
      :creator_id => 1
    ))
  end

  xit "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_name[name=?]", "trip[name]"

      assert_select "input#trip_description[name=?]", "trip[description]"

      assert_select "input#trip_location[name=?]", "trip[location]"

      assert_select "input#trip_creator_id[name=?]", "trip[creator_id]"
    end
  end
end
