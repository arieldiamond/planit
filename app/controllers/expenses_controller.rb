class ExpensesController < ApplicationController
	def index
		@trip = Trip.find_by_id(params[:trip_id])
		@expenses = @trip.expenses
	end

end
