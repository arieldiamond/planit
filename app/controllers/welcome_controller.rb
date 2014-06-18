class WelcomeController < ApplicationController
  layout 'application'

  def index
  	if user_signed_in?
  		redirect_to trips_path
  	end
  end
end
