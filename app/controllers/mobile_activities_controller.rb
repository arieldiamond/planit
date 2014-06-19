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
			trip_name: params[:trip_name],
			creator_id: params[:creator_id] 
			)
		@trip = Trip.find_by_name(params[:trip_name])
    @user = User.find(params[:creator_id])
    @trip.activities << @activity

    @user.created_activities << @activity

		redirect_to "/"

	end 

end