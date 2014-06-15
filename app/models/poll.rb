class Poll < ActiveRecord::Base
	belongs_to :trip
	belongs_to :creator, class_name: "User"
	has_many :options
end
