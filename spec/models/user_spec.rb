require 'rails_helper'

RSpec.describe User, :type => :model do
  let (:user) {User.new(email: "cplanit@planit.com", first_name: "Captain", last_name: "Planit") }

  context '#initialize' do
  	it "has an attribute email" do
  		expect(user.email).to eq("cplanit@planit.com")
  	end
  end
end
