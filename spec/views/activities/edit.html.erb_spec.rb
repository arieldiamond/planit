require 'rails_helper'

RSpec.describe "activities/edit", :type => :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :name => "MyString",
      :description => "MyString",
      :location => "MyString",
      :trip_id => 1,
      :creator_id => 1
    ))
  end

  it "renders the edit activity form" do
    pending("FIX THIS SATURDAY")
    render

    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do

      assert_select "input#activity_name[name=?]", "activity[name]"

      assert_select "input#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_location[name=?]", "activity[location]"

      assert_select "input#activity_trip_id[name=?]", "activity[trip_id]"

      assert_select "input#activity_creator_id[name=?]", "activity[creator_id]"
    end
  end
end
