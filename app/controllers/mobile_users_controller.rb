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
		p "+++++++++++++++++++++++++++++++++++++"
		p @user.id 

		# respond_to do |format|
  #     if @activity.save
  #       format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
  #       format.json { render :show, status: :created, location: @activity }
  #       UserMailer.test_email(current_user).deliver
  #   end

		redirect_to "/"
	end 

end