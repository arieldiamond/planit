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
		@user.traveled_trips.each { |created_trip| @trips << created_trip }
		render json: @trips
	end 

	def trip_detail
		@trip = Trip.find_by_name(params[:trip_name])
		@user = User.find(params[:user_id])
		@amount_owed = @user.trip_account_display_for(@trip)
		@travelers = []
		@trip.travelers.each { |traveler| @travelers << traveler }
		response = { :trip => @trip, 
								 :travelers => @travelers,
								 :expense => @amount_owed
							 }
  	render :json => response
	end 

	def activities_detail
		@trip = Trip.find_by_name(params[:trip_name])
		@activities = []
		@trip.activities.each { |activity| @activities << activity }
		render json: @activities
	end 

end