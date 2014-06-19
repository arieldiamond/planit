class MobileUsersController < ApplicationController

	def new

	end 

	def create

		@user = User.create(
						first_name: params[:FName], 
						last_name: params[:LName],
						email: params[:email],
						phone: params[:phone],
						password: params[:pword]
						)

	end 

end