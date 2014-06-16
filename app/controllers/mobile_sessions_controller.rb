class MobileSessionsController < ApplicationController

	def index
		
	end 



	def new
		
	end

	def create
		@user = User.find_by_email("dwilson@msmachine.com")
		# @user_id = @user.id

		# response.json { render :create, status: :created, location: @user }

		# respond_to do |format|
  #       format.html { redirect_to :create, notice: 'Trip was successfully created.' }
  #       format.json { render :create, status: :created, location: @user }
  #   end



	  respond_to do |format|
  	  format.html { render :create }
    	format.json
  	end

	end 

end