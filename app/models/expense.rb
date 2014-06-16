class Expense < ActiveRecord::Base
	belongs_to :trip
	belongs_to :activity
	has_many :charges, dependent: :destroy
	# accepts_nested_attributes_for :charges, allow_destroy: true

	def splitters
		self.trip.trip_participations.order(:id)
	end


	def cost_display
		# display_in_dollars(self.cost_in_cents)
		self.cost_in_cents
	end
	
end
