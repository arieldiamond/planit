class ExpenseValidator < ActiveModel::Validator
	def validate(record)
		return true if record.charges_balance?
		record.errors.add [:base],  "Your payments and debts don't add up."
	end
end