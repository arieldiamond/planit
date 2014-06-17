require 'rails_helper'

RSpec.describe "trips/index", :type => :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :name => "Name",
        :description => "Description",
        :location => "Location",
        :creator_id => 1
      ),
      Trip.create!(
        :name => "Name",
        :description => "Description",
        :location => "Location",
        :creator_id => 1
      )
    ])
  end

  xit "renders a list of trips" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
