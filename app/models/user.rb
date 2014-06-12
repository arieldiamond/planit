class User < ActiveRecord::Base
	#as a trip-goer
	has_many :trip_participations, foreign_key: :traveler_id #works
	has_many :traveled_trips#, through: :trip_participations #pending

	#as a creator of a trip
	has_many :created_trips, class_name: "Trip", foreign_key: :creator_id #works

	#as a creator of an activity
	has_many :created_activities, class_name: "Activity", foreign_key: :creator_id #works

	#as an activity participant
	has_many :activity_participations, foreign_key: :participant_id #works
	has_many :participated_activities #pending
end
