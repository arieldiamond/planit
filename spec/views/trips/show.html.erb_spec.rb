require 'rails_helper'

RSpec.describe "trips/show", :type => :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :name => "Name",
      :description => "Description",
      :location => "Location",
      :creator_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/1/)
  end
end
