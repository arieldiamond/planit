class Activity < ActiveRecord::Base
  include DateTimeHelper

	#for geocoder, sets latitude and longitude
	geocoded_by :location
	after_validation :geocode

  has_many :activity_participations, dependent: :destroy
  has_many :trip_participations, through: :activity_participations
  has_many :participants, through: :trip_participations, source: :traveler
  belongs_to :creator, class_name: "User"
  belongs_to :trip

  def start_time_display
    to_date_and_time(self.start_time)
  end

  def end_time_display
    to_date_and_time(self.end_time)
  end

end
