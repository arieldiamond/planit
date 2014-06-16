class MobileTripsController < ApplicationController

	def new
	end 

	def create

		@trip = Trip.new(
			name: params[:name], 
			description: params[:description], 
			location: params[:location], 
			start_date: params[:start_date], 
			end_date: params[:end_date],
			creator_id: params[:creator_id] 
			)

		redirect_to "/"
	
	end 

end