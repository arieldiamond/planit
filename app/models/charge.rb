class Charge < ActiveRecord::Base
	# include MoneyHelper

	belongs_to :expense, inverse_of: :charges
	belongs_to :trip_participation

	delegate :company, :to => :employee, :allow_nil => true


	def account_in_cents
		self.payment_in_cents - self.debt_in_cents
	end

	def debt_display
		# display_in_dollars(self.debt_in_cents)
		self.debt_in_cents
	end

	def payment_display
		# display_in_dollars(self.payment_in_cents)
		self.payment_in_cents
	end

	def account_display
		# display_in_dollars(self.account_in_cents)
		self.account_in_cents
	end

end
