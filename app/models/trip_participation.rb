class TripParticipation < ActiveRecord::Base
	belongs_to :traveler
	belongs_to :trip
	has_many :activity_participations, foreign_key: :participant_id
end
