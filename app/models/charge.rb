class Charge < ActiveRecord::Base
	belongs_to :expense
	belongs_to :trip_participation
end
