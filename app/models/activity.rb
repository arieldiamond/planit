class Activity < ActiveRecord::Base
	#
	has_many :activity_participations
	has_many :participants, class_name: "User", through: :activity_participations
	has_many :trip_participations, through: :activity_participations
	belongs_to :creator, class_name: "User"
	belongs_to :trip
end
