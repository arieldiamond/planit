class TripsController < ApplicationController
	def new
	end

	def create
	end

	def index
		@trips = Trip.all
	end
	
	def show
		@trip = Trip.find(params[:id])
	end

	def edit
		@trip = Trip.find(params[:id])
	end

	def update
		@trip = Trip.find(params[:id])
		if @trip.update_attributes(trip_params)
			redirect_to trip_path
		else
			render :action => "edit"
		end
	end


	def destroy
		@trip = Trip.find(params[:id])
		@trip.destroy
	end

	private
	def trip_params
		params.require(:trip).permit(:name, :description, :location, :start_date, :end_date)
	end
end
