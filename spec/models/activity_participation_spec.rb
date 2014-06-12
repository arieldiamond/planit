require 'rails_helper'

RSpec.describe ActivityParticipation, :type => :model do
  let (:participation) { ActivityParticipation.new(participant_id: 7, activity_id: 1) }

  describe '#initialize' do
  	it "has an attribute activity_id" do
  		expect(participation.participant_id).to eq(7)
  	end

  	it "has an attribute particpant_id" do
  		expect(participation.activity_id).to eq(1)
  	end
  end
end
