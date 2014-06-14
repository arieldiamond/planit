class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :invite_for => 2.weeks
	#as a trip-goer
	has_many :trip_participations, foreign_key: :traveler_id #works
	has_many :traveled_trips, through: :trip_participations, source: :trip #works

	#as a creator of a trip
	has_many :created_trips, class_name: "Trip", foreign_key: :creator_id #works

	#as a creator of an activity
	has_many :created_activities, class_name: "Activity", foreign_key: :creator_id #works

	#as an activity participant
	has_many :activity_participations, foreign_key: :trip_participation_id #works
	has_many :participated_activities, through: :activity_participations, source: :activity  #works
end
