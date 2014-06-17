class ChargesController < ApplicationController
  def update
  	@charge = Charge.find_by_id(params[:id])
    respond_to do |format|
      if @charge.update(charge_params)
        format.html { redirect_to @charge, notice: 'Charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @charge }
      else
        format.html { render :edit }
        format.json { render json: @charge.errors, status: :unprocessable_entity }
      end
    end
  end	

   private
  # Use callbacks to share common setup or constraints between actions.

  # Never trust parameters from the scary internet, only allow the white list through.
  def charge_params
    params.require(:expense).permit(:expense_id, :trip_participation_id, :debt_in_cents, :payment_in_cents)
  end
end