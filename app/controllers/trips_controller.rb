class TripsController < ApplicationController
	def new
		@trip = Trip.new
	end

	def create
		@trip = Trip.new(trip_params)
		puts current_user
		if @trip.save
			current_user.created_trips << @trip
			redirect_to @trip
		else
			render action: "new"
		end
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
		redirect_to trips_path
	end

	private
	def trip_params
		params.require(:trip).permit(:name, :description, :location, :start_date, :end_date)
	end
end
