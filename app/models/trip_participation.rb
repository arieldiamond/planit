class TripParticipation < ActiveRecord::Base
  include MoneyHelper

  belongs_to :traveler, class_name: "User" #works
  belongs_to :trip #works
  has_many :activity_participations #works
  has_many :charges

  def find_charge_by_expense(expense)
  	self.charges.find_by_expense_id(expense.id)
  end

  def trip_account_in_cents
  	individual_charge_accounts.sum
  end

  def individual_charge_accounts
  	self.charges.map{|charge| charge.account_in_cents }
  end

  def trip_account_display
  	display_in_dollars(self.trip_account_in_cents)
  end

  def trip_account_display_with_words
    balance = self.trip_account_in_cents
    balance_display = display_in_dollars(self.trip_account_in_cents)
    if balance == 0
      "is even."
    elsif balance > 0
      "is owed " + balance_display
    else
      "owes " + balance_display[1..-1]
    end
  end
end
