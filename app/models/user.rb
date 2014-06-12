class User < ActiveRecord::Base
	#as a trip-goer
	has_many :trip_participations, foreign_key: :traveler_id
	has_many :trips, through: :trip_participations, foreign_key: :traveler_id

	#as a creator of an activity
	has_many :created_activities, source: :activity, foreign_key: :creator_id

	#as a creator of a trip
	has_many :created_trips, source: :trip, foreign_key: :creator_id
end
