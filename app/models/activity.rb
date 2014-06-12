class Activity < ActiveRecord::Base
	#activity-goers
	has_many :activity_participations
	has_many :participants, class_name: "User", through: :activity_participations

	# association with trip
	has_many :trip_participations, through: :activity_participations
	
	#creator of activity
	belongs_to :creator, class_name: "User"

	#trip id
	belongs_to :trip

	# belongs to trip creator
	belongs_to :creator, class_name: "User"
end
