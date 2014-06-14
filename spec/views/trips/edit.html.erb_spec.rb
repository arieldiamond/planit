require 'rails_helper'

RSpec.describe "trips/edit", :type => :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :name => "MyString",
      :description => "MyString",
      :location => "MyString",
      :creator_id => 1
    ))
  end

  it "renders the edit trip form" do
    pending("FIX THIS SATURDAY")
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input#trip_name[name=?]", "trip[name]"

      assert_select "input#trip_description[name=?]", "trip[description]"

      assert_select "input#trip_location[name=?]", "trip[location]"

      assert_select "input#trip_creator_id[name=?]", "trip[creator_id]"
    end
  end
end
