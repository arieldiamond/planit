class ExpenseValidator < ActiveModel::Validator
	def validate(record)
		return true if record.payments_equal_cost?
		record.errors.add [:base],  "Your payments must equal the total cost."
	end
end