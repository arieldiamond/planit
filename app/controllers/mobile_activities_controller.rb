class MobileActivitiesController < ApplicationController

	def new
	end

	def create

		@activity = Activity.create(
			name: params[:name], 
			description: params[:description], 
			location: params[:location], 
			start_time: params[:start_time], 
			end_time: params[:end_time],
			trip_id: params[:trip_id],
			creator_id: params[:creator_id] 
			)
		@trip = Trip.find(params[:trip_id])
    @user = User.find(params[:creator_id])
    @trip.activities << @activity

    @user.created_activities << @activity

		redirect_to "/"

	end 

end