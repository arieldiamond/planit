module MoneyHelper

	def display_in_dollars(amount_in_cents)
		return "0" if amount_in_cents == 0
		amount = amount_in_cents.to_s
		unless amount[0] == "-"
			amount.insert(0, "$")
			amount.insert(1, "00") if amount.length == 1
			amount.insert(1, "0") if amount.length == 2
		else
			amount.insert(1, "$")
			amount.insert(2, "00") if amount.length == 2
			amount.insert(2, "0") if amount.length == 3
		end
		amount.insert(-3, ".")
	end
end
