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
    # puts "XXXXXXXXXXXXXXXXXXXXXXXX"
    # puts params[:expense][:charges_attributes].keys
    @trip = Trip.find_by_id(params[:trip_id])
    @expense = Expense.create(expense_params)
    @trip.expenses << @expense

    # ALB note: This part is super hacky but it's late and I finally got it to work... hopefully refactor later
    params[:expense][:charges_attributes].each do |temp_id, attributes|
      charge = Charge.find_by_id(attributes[:id])
      charge.update!(attributes)
      @expense.charges << charge
    end
    @expense.charges.each do |charge|
      if charge.splitting == true
        charge.update!(debt_in_cents: @expense.cost_per_person)
      end
    end
    # ALB note: hackey part ends here

    respond_to do |format|
      if @expense.save
        format.html { redirect_to trip_path(@trip), notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end



		# @expense = Expense.create(expense_params)
  #   @expense.update(charge_params)
  #   @trip = Trip.find(params[:trip_id])
  #   @trip.expenses << @expense
    # @expense.splitters.each do |splitter|
    #   puts "XXXXXXXXXXXXXXxXXXXXXXXXXXXXXXxX"
    #   puts "splitter.traveler = #{splitter.traveler}"
    #   puts "current_user  = #{current_user}"
    #   if splitter.traveler == current_user
    #     Charge.create(debt_in_cents: @expense.cost_per_person, expense_id: @expense.id, trip_participation_id: splitter.id, payment_in_cents: @expense.cost_in_cents)
    #   end
    #   if splitter.splitting
    #     Charge.create(debt_in_cents: @expense.cost_per_person, expense_id: @expense.id, trip_participation_id: splitter.id)
    #   else
    #     Charge.create(expense_id: @expense.id, trip_participation_id: splitter.id)
    #   end
    # end
    # redirect_to trip_expenses_path(@trip)
	end

	def edit
		@trip = Trip.find_by_id(params[:trip_id])
		@expense = Expense.find_by_id(params[:id])
		@splitters = @trip.splitters
	end

	def update
		@expense = Expense.find_by_id(params[:id])
    respond_to do |format|
      if @expense.update(expense_and_charges_params)
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
    params.require(:expense).permit(:id, :name, :date, :cost_in_cents, :notes, :activity_id)#, charges_attributes: [:id, :expense_id, :trip_participation_id, :debt_in_cents, :payment_in_cents, :splitting, :paid ])
  end

  def expense_and_charges_params
    params.require(:expense).permit(:name, :date, :cost_in_cents, :notes, :activity_id, charges_attributes: [:id, :expense_id, :trip_participation_id, :debt_in_cents, :payment_in_cents, :splitting, :paid ])
  end

end
