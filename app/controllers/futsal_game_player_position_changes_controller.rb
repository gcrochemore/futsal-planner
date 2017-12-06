class FutsalGamePlayerPositionChangesController < ApplicationController
  authorize_resource
  before_action :set_futsal_game_player_position_change, only: [:show, :edit, :update, :destroy]
  # GET /futsal_game_player_position_changes
  def index
    @q = FutsalGamePlayerPositionChange.ransack(params[:q])
    @futsal_game_player_position_changes = @q.result.page(params[:page])
  end
  # GET /futsal_game_player_position_changes/1
  def show
  end

  # GET /futsal_game_player_position_changes/new
  def new
    @futsal_game_player_position_change = FutsalGamePlayerPositionChange.new
  end

  # GET /futsal_game_player_position_changes/1/edit
  def edit
  end

  # POST /futsal_game_player_position_changes
  def create
    @futsal_game_player_position_change = FutsalGamePlayerPositionChange.new(futsal_game_player_position_change_params)

    if @futsal_game_player_position_change.save
      redirect_to @futsal_game_player_position_change, notice: 'Futsal game player position change was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_game_player_position_changes/1
  def update
    if @futsal_game_player_position_change.update(futsal_game_player_position_change_params)
      redirect_to @futsal_game_player_position_change, notice: 'Futsal game player position change was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_game_player_position_changes/1
  def destroy
    @futsal_game_player_position_change.destroy
    redirect_to futsal_game_player_position_changes_url, notice: 'Futsal game player position change was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_game_player_position_change
      @futsal_game_player_position_change = FutsalGamePlayerPositionChange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_game_player_position_change_params

      params.require(:futsal_game_player_position_change).permit(:futsal_position_id, :time, :game_registration_player_in_id, :game_registration_player_out_id)

    end
end
