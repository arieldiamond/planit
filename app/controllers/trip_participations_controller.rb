class TripParticipationsController < ApplicationController
  before_action :set_trip_participation, only: [:show, :edit, :update, :destroy]

  # GET /trip_participations
  # GET /trip_participations.json
  def index
    @trip_participations = TripParticipation.all
  end

  # GET /trip_participations/1
  # GET /trip_participations/1.json
  def show
  end

  # GET /trip_participations/new
  def new
    @trip_participation = TripParticipation.new
  end

  # GET /trip_participations/1/edit
  def edit
  end

  # POST /trip_participations
  # POST /trip_participations.json
  def create
    @trip_participation = TripParticipation.new(trip_participation_params)

    respond_to do |format|
      if @trip_participation.save
        format.html { redirect_to @trip_participation, notice: 'Trip participation was successfully created.' }
        format.json { render :show, status: :created, location: @trip_participation }
      else
        format.html { render :new }
        format.json { render json: @trip_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_participations/1
  # PATCH/PUT /trip_participations/1.json
  def update
    respond_to do |format|
      if @trip_participation.update(trip_participation_params)
        format.html { redirect_to trips_path, notice: 'Trip participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_participation }
      else
        format.html { render :edit }
        format.json { render json: @trip_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_participations/1
  # DELETE /trip_participations/1.json
  def destroy
    @trip_participation.destroy
    respond_to do |format|
      format.html { redirect_to trips_path, notice: 'Trip participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_trip_participation
      @trip_participation = TripParticipation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_participation_params
      params.require(:trip_participation).permit(:traveler_id, :trip_id, :transportation_type, :arrival_time, :departure_time, :confirmed)
    end
end
