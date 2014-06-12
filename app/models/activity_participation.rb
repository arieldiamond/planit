class ActivityParticipation < ActiveRecord::Base
	belongs_to :participant, class_name: "User"
	belongs_to :activity
end
