class MobileTripsController < ApplicationController

	def create

		@trip = Trip.create(
			name: params[:name], 
			description: params[:description], 
			location: params[:location], 
			start_date: params[:start_date], 
			end_date: params[:end_date],
			creator_id: params[:creator_id] 
			)
		user = User.find_by_id(params[:creator_id])
		user.created_trips << @trip
    user.traveled_trips << @trip

		redirect_to "/"
	
	end 

	def user_trips
		@user = User.find(params[:user_id])
		@trips = []
		@user.created_trips.each { |created_trip| @trips << created_trip }
		@user.trip_participations { |trip_p| @trips << trip_p }
		render json: @trips
	end 

end