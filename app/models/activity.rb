class Activity < ActiveRecord::Base
	#activity-goers
	has_many :activity_participations #works
	has_many :participants, class_name: "User", through: :activity_participations #works

	# association with trip
	has_many :trip_participations#pending
	
	#creator of activity
	belongs_to :creator, class_name: "User" #works

	#trip id
	belongs_to :trip #works
end
