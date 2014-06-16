class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @traveler = current_user
    @participations = TripParticipation.where(traveler_id: current_user.id)
    @trips = @participations.map{|p| p.trip}
    @pending_trip_partcipations = @traveler.pending_trip_participations
    @confirmed_trip_partcipations = @traveler.confirmed_trip_participations
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip = Trip.find(params[:id])
    @activities = @trip.activities

    @hash = Gmaps4rails.build_markers(@activities) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
      marker.infowindow activity.description
    end
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    current_user.created_trips << @trip
    current_user.traveled_trips << @trip

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_path, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # ALB note: Not sure where this should go... definitely not here.
  def invite
    @trip = Trip.find(params[:trip_invited_to])
    @invitee_email = params[:invitee_email]
    if User.find_by_email(@invitee_email)
      @invitee = User.find_by_email(@invitee_email)
      TripParticipation.create(traveler_id: @invitee.id, trip_id: @trip.id, confirmed: false)
    else
      @user = User.invite!({:email => @invitee_email}, current_user)
      TripParticipation.create(traveler_id: @user.id, trip_id: @trip.id, confirmed: false)
    end
    redirect_to trip_path(@trip.id)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:name, :description, :location, :start_date, :end_date, :creator_id)
    end
end
