class MobileSessionsController < ApplicationController


	def create_session
		@user = User.find_by_email("dwilson@msmachine.com") 	
		render json: @user
	end


end