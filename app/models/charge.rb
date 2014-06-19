class Charge < ActiveRecord::Base
	include MoneyHelper

	belongs_to :expense, inverse_of: :charges
	belongs_to :trip_participation

	def account_in_cents
		self.payment_in_cents - self.debt_in_cents
	end

	def debt_display
		display_in_dollars(self.debt_in_cents)
	end

	def payment_display
		payment = self.payment_in_cents
		if payment == 0
			0
		else
			display_in_dollars(payment)
		end
	end

	def account_display
		display_in_dollars(self.account_in_cents)
	end

end
