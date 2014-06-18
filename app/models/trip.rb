class Trip < ActiveRecord::Base
  #for geocoder, sets latitude and longitude
  geocoded_by :location
  after_validation :geocode
  
  has_many :trip_participations, dependent: :destroy #works
  has_many :travelers, through: :trip_participations #works
  belongs_to :creator, class_name: "User" #works
  has_many :activities, dependent: :destroy #works
  has_many :expenses, dependent: :destroy 
  has_many :polls, dependent: :destroy

  def splitters
    self.trip_participations
  end

  def cost_in_cents
    costs = self.expenses.pluck(:cost_in_cents).sum
  end

  def cost_display
    # display_in_dollars(self.cost_in_cents)
    self.cost_in_cents
  end

end
