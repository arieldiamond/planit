class Trip < ActiveRecord::Base
  has_many :trip_participations,dependent: :destroy #works
  has_many :travelers, through: :trip_participations #works
  belongs_to :creator, class_name: "User" #works
  has_many :activities, dependent: :destroy #works
  has_many :expenses, dependent: :destroy 

  def splitters
  	self.trip_participations.order(:traveler_id)
  end

  def cost_in_cents
  	self.expenses.pluck(:cost_in_cents).sum
  end

  def cost_display
		# display_in_dollars(self.cost_in_cents)
		self.cost_in_cents
  end

end
