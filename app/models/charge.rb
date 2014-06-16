class Charge < ActiveRecord::Base
	belongs_to :expense
	belongs_to :trip_participation

	def account_in_cents
		self.payment_in_cents - self.debt_in_cents
	end

end
