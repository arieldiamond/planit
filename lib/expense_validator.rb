class ExpenseValidator < ActiveModel::Validator
	def validate(record)
		return true if record.payments_equal_cost?
		record.errors[:base] << "Your payments and debts don't add up."
	end
end