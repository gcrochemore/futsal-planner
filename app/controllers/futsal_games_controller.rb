class FutsalGamesController < ApplicationController
  authorize_resource
  before_action :set_futsal_game, only: [:show, :edit, :update, :destroy, :parse_match_resume, :calculate_goalkeeper_position]
  # GET /futsal_games
  def index
    @q = FutsalGame.ransack(params[:q])
    @futsal_games = @q.result.joins(:team_home, :team_outside).page(params[:page])
  end
  # GET /futsal_games/1
  def show
    @minutes_buts = []
    @ecart = []
    goal_1 = 0
    @score_1 = []
    @score_2 = []
    goal_2 = 0
    @futsal_game.goals.order_by_time.each do |goal|
      goal.team == @futsal_game.team_home ? goal_1 = goal_1 + 1 : goal_2 = goal_2 + 1      
      @minutes_buts.push(goal.time)
      @ecart.push((goal_1-goal_2).to_s)
      @score_1.push(goal_1)
      @score_2.push(goal_2)
    end

    @dispo = User.unscoped.where('id NOT IN (?)', 
              GameRegistration.where('futsal_game_id IN (?) AND user_id IS NOT NULL', 
                FutsalGame.where("date > ? AND date < ? ", @futsal_game.date.beginning_of_day(), @futsal_game.date.end_of_day()).pluck(:id)
              ).pluck(:user_id)
            ).where('id IN (?)', 
              GameRegistration.where('futsal_game_id IN (?) AND user_id IS NOT NULL', 
                FutsalGame.where("futsal_field_id = ? AND (team_home_id = ? OR team_outside_id = ? OR team_home_id = ? OR team_outside_id = ?)", @futsal_game.futsal_field_id, @futsal_game.team_home, @futsal_game.team_home, @futsal_game.team_outside, @futsal_game.team_outside).pluck(:id)
              ).pluck(:user_id)
            ).order("match DESC").order(:first_name, :last_name)
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

  def calculate_goalkeeper_position
    @futsal_game.andand.futsal_game_player_position_by_team(@futsal_game.team_home).delete_all
    
    futsal_game_player_position = FutsalGamePlayerPosition.new
    @futsal_game.andand.goal_by_team(@futsal_game.team_outside).order(:time).each_with_index do |goal, index|
      if(index == 0 || futsal_game_player_position.andand.game_registration.andand.user != goal.goalkeeper) 
        if( index > 0 )
          futsal_game_player_position.end_time = goal.time - 15
          futsal_game_player_position.save
        end
        futsal_game_player_position = FutsalGamePlayerPosition.new
        futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.goalkeeper, @futsal_game, @futsal_game.team_home).first
        futsal_game_player_position.futsal_position_id = 1
        futsal_game_player_position.calculated = true
        if( index > 0 )
          futsal_game_player_position.begin_time = goal.time - 15
        else
          futsal_game_player_position.begin_time = 0
        end
        futsal_game_player_position.end_time = 0
      end
    end
    futsal_game_player_position.end_time = @futsal_game.duration * 60
    futsal_game_player_position.save

    @futsal_game.andand.futsal_game_player_position_by_team(@futsal_game.team_outside).delete_all
    
    futsal_game_player_position = FutsalGamePlayerPosition.new
    @futsal_game.andand.goal_by_team(@futsal_game.team_home).order(:time).each_with_index do |goal, index|
      if(index == 0 || futsal_game_player_position.andand.game_registration.andand.user != goal.goalkeeper) 
        if( index > 0 )
          futsal_game_player_position.end_time = goal.time - 15
          futsal_game_player_position.save
        end
        futsal_game_player_position = FutsalGamePlayerPosition.new
        futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.goalkeeper, @futsal_game, @futsal_game.team_outside).first
        futsal_game_player_position.futsal_position_id = 1
        futsal_game_player_position.calculated = true
        if( index > 0 )
          futsal_game_player_position.begin_time = goal.time - 15
        else
          futsal_game_player_position.begin_time = 0
        end
        futsal_game_player_position.end_time = 0
      end
    end
    futsal_game_player_position.end_time = @futsal_game.duration * 60
    futsal_game_player_position.save
    redirect_to @futsal_game
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

      params.require(:futsal_game).permit(:date, :duration, :futsal_field_id, :futsal_tournament_id, :team_home_id, :team_outside_id, :score_home, :score_outside, :video_link, :match_resume_link,
                                          game_registrations_attributes: [:id, :user_id, :futsal_game_id, :team_id, :goal, :assist, :_destroy],
                                          futsal_game_player_position_attributes: [:id, :game_registration_id, :futsal_position_id, :begin_time, :end_time, :duration, :_destroy]);

    end
end
