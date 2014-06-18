class ExpensesController < ApplicationController
	def index
		@trip = Trip.includes(expenses: :splitters).find_by_id(params[:trip_id])
	end

	def new
		@trip = Trip.find_by_id(params[:trip_id])
		@expense = Expense.new(trip_id: @trip.id)
    @expense.create_charges
	end

	def create
		@expense = Expense.create(expense_params)
    @trip = Trip.find(params[:trip_id])
    @trip.expenses << @expense
    @expense.splitters.each do |splitter|
      puts "XXXXXXXXXXXXXXxXXXXXXXXXXXXXXXxX"
      puts "splitter.traveler = #{splitter.traveler}"
      puts "current_user  = #{current_user}"
      if splitter.traveler == current_user
        Charge.create(debt_in_cents: @expense.cost_per_person, expense_id: @expense.id, trip_participation_id: splitter.id, payment_in_cents: @expense.cost_in_cents)
      else
        Charge.create(debt_in_cents: @expense.cost_per_person, expense_id: @expense.id, trip_participation_id: splitter.id)
      end
    end
    redirect_to trip_expenses_path(@trip)
	end

	def edit
		@trip = Trip.find_by_id(params[:trip_id])
		@expense = Expense.find_by_id(params[:id])
		@splitters = @trip.splitters
	end

	def update
		@expense = Expense.find_by_id(params[:id])
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to trip_expenses_path(@expense.trip), notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
	end

  private
  # Never trust parameters from the scary internet, only allow the white list through.

  def expense_params
    params.require(:expense).permit(:name, :date, :cost_in_cents, :notes, :activity_id, charges_attributes: [:id, :expense_id, :trip_participation_id, :debt_in_cents, :payment_in_cents ])
  end

end
