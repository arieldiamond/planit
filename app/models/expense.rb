class Expense < ActiveRecord::Base
	include ActiveModel::Validations
	# validates_with ExpenseValidator, on: :create
	# validates :cost_in_cents, presence: true
	
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

	def participating_splitters
		self.charges.where(splitting: true)
	end

	def number_of_splitters
		self.participating_splitters.length
	end

	def cost_per_person
		self.cost_in_cents/number_of_splitters
	end

	def cost_display
		# display_in_dollars(self.cost_in_cents)
		self.cost_in_cents
	end

	def all_debts_in_cents
		self.charges.pluck(:debt_in_cents)
	end

	def debt_sum_in_cents
		self.all_debts_in_cents.sum
	end

	def all_payments_in_cents
		self.charges.pluck(:payment_in_cents)
	end

	def payment_sum_in_cents
		self.all_payments_in_cents.sum
	end

	def charges_balance?
		debt_sum_in_cents == payment_sum_in_cents
	end

	def payments_equal_cost?
		self.payment_sum_in_cents == self.cost_in_cents
	end

end

class ExpenseValidator < ActiveModel::Validator
	def validate(record)
		return true if record.payments_equal_cost?
		record.errors[:base] << "Your payments and debts don't add up."
	end


end
