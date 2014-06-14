require 'rails_helper'

RSpec.describe "activities/new", :type => :view do
  before(:each) do
    assign(:activity, Activity.new(
      :name => "MyString",
      :description => "MyString",
      :location => "MyString",
      :trip_id => 1,
      :creator_id => 1
    ))
  end

  it "renders new activity form" do
    pending("FIX THIS SATURDAY")
    render

    assert_select "form[action=?][method=?]", activities_path, "post" do

      assert_select "input#activity_name[name=?]", "activity[name]"

      assert_select "input#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_location[name=?]", "activity[location]"

      assert_select "input#activity_trip_id[name=?]", "activity[trip_id]"

      assert_select "input#activity_creator_id[name=?]", "activity[creator_id]"
    end
  end
end
