class FutsalTournamentPlayerRegistrationsController < ApplicationController
  authorize_resource
  before_action :set_futsal_tournament_player_registration, only: [:show, :edit, :update, :destroy]
  # GET /futsal_tournament_player_registrations
  def index
    @q = FutsalTournamentPlayerRegistration.ransack(params[:q])
    @futsal_tournament_player_registrations = @q.result.page(params[:page])
  end
  # GET /futsal_tournament_player_registrations/1
  def show
  end

  # GET /futsal_tournament_player_registrations/new
  def new
    @futsal_tournament_player_registration = FutsalTournamentPlayerRegistration.new
  end

  # GET /futsal_tournament_player_registrations/1/edit
  def edit
  end

  # POST /futsal_tournament_player_registrations
  def create
    @futsal_tournament_player_registration = FutsalTournamentPlayerRegistration.new(futsal_tournament_player_registration_params)

    if @futsal_tournament_player_registration.save
      redirect_to @futsal_tournament_player_registration, notice: 'Futsal tournament player registration was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_tournament_player_registrations/1
  def update
    if @futsal_tournament_player_registration.update(futsal_tournament_player_registration_params)
      redirect_to @futsal_tournament_player_registration, notice: 'Futsal tournament player registration was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_tournament_player_registrations/1
  def destroy
    @futsal_tournament_player_registration.destroy
    redirect_to futsal_tournament_player_registrations_url, notice: 'Futsal tournament player registration was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_tournament_player_registration
      @futsal_tournament_player_registration = FutsalTournamentPlayerRegistration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_tournament_player_registration_params

      params.require(:futsal_tournament_player_registration).permit(:futsal_tournament_id, :team_id, :user_id)

    end
end
