class Option < ActiveRecord::Base
	acts_as_votable

	belongs_to :poll

	def upvotes
		self.get_upvotes.size
	end
end