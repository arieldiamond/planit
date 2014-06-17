require 'rails_helper'

RSpec.describe "activities/index", :type => :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :name => "Name",
        :description => "Description",
        :location => "Location",
        :trip_id => 1,
        :creator_id => 2
      ),
      Activity.create!(
        :name => "Name",
        :description => "Description",
        :location => "Location",
        :trip_id => 1,
        :creator_id => 2
      )
    ])
  end

  xit "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
