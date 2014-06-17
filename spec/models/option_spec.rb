require 'rails_helper'

RSpec.describe Option, :type => :model do
  let (:option) {Option.new(name: "Paris", poll_id: 1)}

  describe '#initialize' do
  	it "has an attribute name" do
  		expect(option.name).to eq("Paris")
  	end

  	it "has a poll_id" do
  		expect(option.poll_id).to eq(1)
  	end
  end

  context "#associations" do
  	it {should belong_to(:poll)}
  end
end
