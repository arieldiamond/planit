class TripParticipation < ActiveRecord::Base
  belongs_to :traveler, class_name: "User" #works
  belongs_to :trip #works
  has_many :activity_participations #works
end
