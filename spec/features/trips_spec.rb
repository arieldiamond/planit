require 'rails_helper'

describe "Trip View", :type => :feature do
	before :each do
		Trip.make(name: "Your Mom's Party", description: "Your mom is having a party and everyone is going")
	end
	
	describe 'trips display page' do
		it 'shows all trips' do
			visit trips_path
			@trips.each do |t|
				page.should have_content(t.name)
			end
		end
	end
end