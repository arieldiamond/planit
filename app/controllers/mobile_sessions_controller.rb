class MobileSessionsController < ApplicationController


	def create_session
		@user = User.find_by_email(params[:Email]) 	
		render json: @user
	end


end