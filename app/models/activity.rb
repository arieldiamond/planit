class Activity < ActiveRecord::Base
  #activity-goers
  has_many :activity_participations, dependent: :destroy #works
  # association with trip
  has_many :trip_participations, through: :activity_participations #works
  has_many :participants, through: :trip_participations, source: :traveler #works

  #creator of activity
  belongs_to :creator, class_name: "User" #works

  #trip id
  belongs_to :trip #works
end
