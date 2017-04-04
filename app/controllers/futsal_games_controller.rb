class FutsalGamesController < ApplicationController
  authorize_resource
  before_action :set_futsal_game, only: [:show, :edit, :update, :destroy, :parse_match_resume]
  # GET /futsal_games
  def index
    @q = FutsalGame.ransack(params[:q])
    @futsal_games = @q.result.page(params[:page])
  end
  # GET /futsal_games/1
  def show
  end

  # GET /futsal_games/new
  def new
    @futsal_game = FutsalGame.new
  end

  # GET /futsal_games/1/edit
  def edit
  end

  def parse_match_resume
  end  

  def affect_player_to_team
    @game_registration = GameRegistration.find(params[:game_registration])
    @team = Team.find(params[:team])
    @game_registration.team = @team
    @game_registration.save
    redirect_to @game_registration.futsal_game, notice: 'Futsal game was successfully created.'
  end

  # POST /futsal_games
  def create
    @futsal_game = FutsalGame.new(futsal_game_params)

    if @futsal_game.save
      redirect_to @futsal_game, notice: 'Futsal game was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_games/1
  def update
    if @futsal_game.update(futsal_game_params)
      redirect_to @futsal_game, notice: 'Futsal game was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_games/1
  def destroy
    @futsal_game.destroy
    redirect_to futsal_games_url, notice: 'Futsal game was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_game
      @futsal_game = FutsalGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_game_params

      params.require(:futsal_game).permit(:date, :duration, :futsal_field_id, :team_home_id, :team_outside_id, :score_home, :score_outside, :video_link, :match_resume_link)

    end
end
