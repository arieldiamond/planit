class MobileSessionsController < ApplicationController


	def create_session
		# p params[:Email].class
		# p "++++++++++++++++++++++++++++++++"
		@user = User.find_by_email(params[:Email])
		render json: @user

	end


end