require 'rails_helper'

RSpec.describe "trips/edit", :type => :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :name => "Lake",
      :description => "House",
      :location => "Vermont",
      :creator_id => 1
    ))
  end

  xit "renders the edit trip form" do
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input#trip_name[name=?]", 'Lake'

      assert_select "input#trip_description[name=?]", "trip[description]"

      assert_select "input#trip_location[name=?]", "trip[location]"

      assert_select "input#trip_creator_id[name=?]", "trip[creator_id]"
    end
  end
end
