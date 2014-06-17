class Expense < ActiveRecord::Base
	belongs_to :trip
	belongs_to :activity
	has_many :charges, dependent: :destroy
	accepts_nested_attributes_for :charges#, allow_destroy: true
	has_many :splitters, through: :trip, source: :trip_participations

	def create_charges
		self.splitters.each do |splitter|
			charge = Charge.create(trip_participation_id: splitter.id)
			self.charges << charge
		end
	end

	def cost_display
		# display_in_dollars(self.cost_in_cents)
		self.cost_in_cents
	end
	
end
