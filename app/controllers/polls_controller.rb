class PollsController < ApplicationController

	def index
		@polls = Poll.where(trip_id: params[:trip_id])
		@trip = Trip.find(params[:trip_id])
	end

	def show
		@poll = Poll.find(params[:id])
		@options = Option.where(poll_id: @poll.id)
	end

	def new
		@poll = Poll.new
	end

	def edit

	end

	def create
		@poll = Poll.new(poll_params)
	end

	def update

	end

	def destroy
		@poll = Poll.find(params[:id])
		@poll.destroy
	    respond_to do |format|
	      format.html { redirect_to trip_polls_path, notice: 'Poll was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	def upvote
		redirect_to "http://www.google.com"
	end


	private

		def poll_params
			params.require(:poll).permit(:name, :trip_id, :creator_id)
		end

end
