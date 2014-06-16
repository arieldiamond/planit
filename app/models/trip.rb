class Trip < ActiveRecord::Base
  has_many :trip_participations,dependent: :destroy #works
  has_many :travelers, through: :trip_participations #works
  belongs_to :creator, class_name: "User" #works
  has_many :activities, dependent: :destroy #works
  has_many :expenses, dependent: :destroy 
end
