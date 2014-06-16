class ExpensesController < ApplicationController
	def index
		@trip = Trip.find_by_id(params[:trip_id])
		@expenses = @trip.expenses
		@splitters = @trip.splitters
	end

	def new
		@trip = Trip.find_by_id(params[:trip_id])
		@expense = Expense.new
	end

	def create
		@expense = Expense.create(expense_params)
    @trip = Trip.find(params[:trip_id])
    @trip.expenses << @expense
    cost_per_person = @expense.cost_in_cents/@expense.splitters.length
    @expense.splitters.each do |splitter|
    	charge = Charge.create(debt_in_cents: cost_per_person, payment_in_cents: 0, trip_participation_id: splitter.id)
    	@expense.charges << charge
    end
    redirect_to trip_expenses_path(@trip)
	end

  private
  # Use callbacks to share common setup or constraints between actions.

  # Never trust parameters from the scary internet, only allow the white list through.
  def expense_params
    params.require(:expense).permit(:name, :date, :cost_in_cents, :notes, :activity_id)
  end

end
