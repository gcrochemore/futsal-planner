class FutsalGamePlayerPositionsController < ApplicationController
  authorize_resource
  before_action :set_futsal_game_player_position, only: [:show, :edit, :update, :destroy]
  # GET /futsal_game_player_positions
  def index
    @q = FutsalGamePlayerPosition.ransack(params[:q])
    @futsal_game_player_positions = @q.result.page(params[:page])
  end
  # GET /futsal_game_player_positions/1
  def show
  end

  # GET /futsal_game_player_positions/new
  def new
    @futsal_game_player_position = FutsalGamePlayerPosition.new
  end

  # GET /futsal_game_player_positions/1/edit
  def edit
  end

  # POST /futsal_game_player_positions
  def create
    @futsal_game_player_position = FutsalGamePlayerPosition.new(futsal_game_player_position_params)
    @futsal_game_player_position.calculated = false

    if @futsal_game_player_position.save
      redirect_to @futsal_game_player_position, notice: 'Futsal game player position was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_game_player_positions/1
  def update
    @futsal_game_player_position.calculated = false
    if @futsal_game_player_position.update(futsal_game_player_position_params)
      redirect_to @futsal_game_player_position, notice: 'Futsal game player position was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_game_player_positions/1
  def destroy
    @futsal_game_player_position.destroy
    redirect_to futsal_game_player_positions_url, notice: 'Futsal game player position was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_game_player_position
      @futsal_game_player_position = FutsalGamePlayerPosition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_game_player_position_params

      params.require(:futsal_game_player_position).permit(:game_registration_id, :futsal_position_id, :begin_time, :end_time, :duration)

    end
end
