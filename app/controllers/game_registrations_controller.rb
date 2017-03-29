class GameRegistrationsController < ApplicationController
  authorize_resource
  before_action :set_game_registration, only: [:show, :edit, :update, :destroy]
  # GET /game_registrations
  def index
    @q = GameRegistration.ransack(params[:q])
    @game_registrations = @q.result.page(params[:page])
  end
  # GET /game_registrations/1
  def show
  end

  # GET /game_registrations/new
  def new
    @game_registration = GameRegistration.new
  end

  # GET /game_registrations/1/edit
  def edit
  end

  # POST /game_registrations
  def create
    @game_registration = GameRegistration.new(game_registration_params)

    if @game_registration.save
      redirect_to @game_registration, notice: 'Game registration was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /game_registrations/1
  def update
    if @game_registration.update(game_registration_params)
      redirect_to @game_registration, notice: 'Game registration was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /game_registrations/1
  def destroy
    @game_registration.destroy
    redirect_to game_registrations_url, notice: 'Game registration was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_registration
      @game_registration = GameRegistration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_registration_params

      params.require(:game_registration).permit(:user_id, :futsal_game_id, :team_id)

    end
end
