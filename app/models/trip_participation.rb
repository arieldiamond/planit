class TripParticipation < ActiveRecord::Base
  belongs_to :traveler, class_name: "User" #works
  belongs_to :trip #works
  has_many :activity_participations #works
  has_many :charges

  def find_charge_by_expense(expense)
  	self.charges.find_by_expense_id(expense.id)
  end
end
