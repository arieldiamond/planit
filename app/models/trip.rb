class Trip < ActiveRecord::Base
	has_many :trip_participations
	has_many :travelers, through: :trip_participations
	belongs_to :creator, class_name: "User"
end
