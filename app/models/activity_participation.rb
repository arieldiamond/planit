class ActivityParticipation < ActiveRecord::Base
	#needs to be associated with trip participations
	belongs_to :participant, class_name: "User" #works
	belongs_to :activity #works
end
