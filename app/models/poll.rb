class Poll < ActiveRecord::Base
	belongs_to :trip
	belongs_to :creator, class_name: "User"
	has_many :options, dependent: :destroy
	accepts_nested_attributes_for :options, :reject_if => :all_blank, :allow_destroy => true
end
