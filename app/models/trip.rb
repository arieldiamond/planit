class Trip < ActiveRecord::Base
	has_many :trip_participations #works
	has_many :travelers, through: :trip_participations #pending
	belongs_to :creator, class_name: "User" #works
end
