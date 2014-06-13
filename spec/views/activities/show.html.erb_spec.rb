require 'rails_helper'

RSpec.describe "activities/show", :type => :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :name => "Name",
      :description => "Description",
      :location => "Location",
      :trip_id => 1,
      :creator_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
