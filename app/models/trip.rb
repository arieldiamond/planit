class Trip < ActiveRecord::Base
  has_many :trip_participations #works
  has_many :travelers, through: :trip_participations #works
  belongs_to :creator, class_name: "User" #works
  has_many :activities #works
end
