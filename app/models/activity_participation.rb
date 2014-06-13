class ActivityParticipation < ActiveRecord::Base
  #needs to be associated with trip participations
  belongs_to :trip_participation #works
  belongs_to :activity #works
end
