class Expense < ActiveRecord::Base
	belongs_to :trip
	belongs_to :activity
	has_many :charges, dependent: :destroy
end
