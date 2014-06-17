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
		@trip = Trip.find(params[:trip_id])
		@poll.options.build
	end

	def edit

	end

	def create
		puts params
		@poll = Poll.new(poll_params)
		@trip = Trip.find(params[:trip_id])
		@trip.polls << @poll
		current_user.created_polls << @poll

		if @poll.save
			redirect_to trip_polls_path
		else
			redirect_to :back
		end
	end

	def update

	end

	def destroy
		#need to create callback that destroys all options too
		@poll = Poll.find(params[:id])
		@poll.destroy
	    respond_to do |format|
	      format.html { redirect_to trip_polls_path, notice: 'Poll was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	def upvote
		@user = current_user
		@option = Option.find(params[:option_id])
		@option.upvote_from @user
		redirect_to :back
	end

	def downvote
		@user = current_user
		@option = Option.find(params[:option_id])
		@option.downvote_from @user
		redirect_to :back
	end


	private

		def poll_params
			params.require(:poll).permit(:name, :trip_id, :creator_id, options_attributes: [:id, :name, :poll_id, :_destroy])
		end

end
