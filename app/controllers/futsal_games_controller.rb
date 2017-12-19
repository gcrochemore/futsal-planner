class FutsalGamesController < ApplicationController
  authorize_resource
  before_action :set_futsal_game, only: [:show, :edit, :update, :destroy, :parse_match_resume, :calculate_goalkeeper_position, 
    :send_email_to_prevent_statistics_are_up_to_date, :send_email_to_prevent_teams_are_up_to_date, :affect_or_invite_players, 
    :teams_making]
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
  end

  # GET /futsal_games/new
  def new
    @futsal_game = FutsalGame.new
  end

  def affect_or_invite_players

    @dispo = User.unscoped.where('id NOT IN (?)', 
              GameRegistration.where('futsal_game_id IN (?) AND user_id IS NOT NULL', 
                FutsalGame.where("date > ? AND date < ? ", @futsal_game.date.beginning_of_day(), @futsal_game.date.end_of_day()).pluck(:id)
              ).pluck(:user_id)
            ).where('id IN (?)', 
              GameRegistration.where('futsal_game_id IN (?) AND user_id IS NOT NULL', 
                FutsalGame.where("futsal_field_id = ? AND (team_home_id = ? OR team_outside_id = ? OR team_home_id = ? OR team_outside_id = ?)", @futsal_game.futsal_field_id, @futsal_game.team_home, @futsal_game.team_home, @futsal_game.team_outside, @futsal_game.team_outside).pluck(:id)
              ).pluck(:user_id)
            ).order("match DESC").order(:first_name, :last_name)
    @users = User.all
    @game_registrations_possibles_teams = [Team.new, @futsal_game.team_home, @futsal_game.team_outside]

  end

  # GET /futsal_games/1/edit
  def edit
  end

  def send_email_to_prevent_statistics_are_up_to_date
    @futsal_game.game_registrations.each do |game_registration|
      UserMailer.match_update(game_registration).deliver
    end
    redirect_to @futsal_game
  end

  def send_email_to_prevent_teams_are_up_to_date
    @futsal_game.game_registrations.each do |game_registration|
      UserMailer.teams_is_online(game_registration).deliver
    end
    redirect_to @futsal_game
  end

  def parse_match_resume
  end

  def teams_making
    @team_making = MatchMaking.new(game_registrations: @futsal_game.game_registrations)
  end

  def calculate_goalkeeper_position
    @futsal_game.andand.futsal_game_player_position_by_team_and_position(@futsal_game.team_home, 1).delete_all
    
    futsal_game_player_position = FutsalGamePlayerPosition.new
    @futsal_game.andand.goal_and_change_by_team_and_position(@futsal_game.team_outside, @futsal_game.team_home, 1).each_with_index do |goal, index|
      if(index == 0 || (goal.instance_of? FutsalGamePlayerPositionChange) || ((futsal_game_player_position.andand.game_registration.andand.user != goal.goalkeeper) && !goal.goalkeeper.nil?))
        if goal.instance_of? FutsalGamePlayerPositionChange
          if( index == 0 )
            futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.game_registration_player_out.user.id, @futsal_game, @futsal_game.team_home).first
            futsal_game_player_position.futsal_position_id = 1
            futsal_game_player_position.begin_time = 0
          end
          futsal_game_player_position.end_time = goal.time
          futsal_game_player_position.save

          futsal_game_player_position = FutsalGamePlayerPosition.new
          futsal_game_player_position.futsal_position_id = 1
          futsal_game_player_position.begin_time = goal.time
          futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.game_registration_player_in.user.id, @futsal_game, @futsal_game.team_home).first
        else
          if( index > 0 )
            end_time = ((futsal_game_player_position.end_time + goal.time) / 2)
            futsal_game_player_position.end_time = end_time
            futsal_game_player_position.save
          end
          futsal_game_player_position = FutsalGamePlayerPosition.new
          futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.goalkeeper, @futsal_game, @futsal_game.team_home).first
          futsal_game_player_position.futsal_position_id = 1
          futsal_game_player_position.calculated = true
          if( index > 0 )
            futsal_game_player_position.begin_time = end_time
          else
            futsal_game_player_position.begin_time = 0
          end
        end
      end
      futsal_game_player_position.end_time = goal.time
    end
    if !futsal_game_player_position.game_registration.nil?
      futsal_game_player_position.end_time = @futsal_game.duration * 60
      futsal_game_player_position.save
    end

    @futsal_game.andand.futsal_game_player_position_by_team_and_position(@futsal_game.team_outside, 1).delete_all
    
    futsal_game_player_position = FutsalGamePlayerPosition.new
    @futsal_game.andand.goal_and_change_by_team_and_position(@futsal_game.team_home, @futsal_game.team_outside, 1).each_with_index do |goal, index|
      if(index == 0 || (goal.instance_of? FutsalGamePlayerPositionChange) || ((futsal_game_player_position.andand.game_registration.andand.user != goal.goalkeeper) && !goal.goalkeeper.nil?))
        if goal.instance_of? FutsalGamePlayerPositionChange
          if( index == 0 )
            futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.game_registration_player_out.user.id, @futsal_game, @futsal_game.team_outside).first
            futsal_game_player_position.futsal_position_id = 1
            futsal_game_player_position.begin_time = 0
          end
          futsal_game_player_position.end_time = goal.time
          futsal_game_player_position.save

          futsal_game_player_position = FutsalGamePlayerPosition.new
          futsal_game_player_position.futsal_position_id = 1
          futsal_game_player_position.begin_time = goal.time
          futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.game_registration_player_in.user.id, @futsal_game, @futsal_game.team_outside).first
        else
          if( index > 0 )
            end_time = ((futsal_game_player_position.end_time + goal.time) / 2)
            futsal_game_player_position.end_time = end_time
            futsal_game_player_position.save
          end
          futsal_game_player_position = FutsalGamePlayerPosition.new
          futsal_game_player_position.game_registration = GameRegistration.where('user_id = ? AND futsal_game_id = ? AND team_id = ?', goal.goalkeeper, @futsal_game, @futsal_game.team_outside).first
          futsal_game_player_position.futsal_position_id = 1
          futsal_game_player_position.calculated = true
          if( index > 0 )
            futsal_game_player_position.begin_time = end_time
          else
            futsal_game_player_position.begin_time = 0
          end
        end
      end
      futsal_game_player_position.end_time = goal.time
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
    redirect_to @game_registration.futsal_game, notice: 'Inscriptions mise a jour'
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
                                          futsal_game_player_position_attributes: [:id, :game_registration_id, :futsal_position_id, :begin_time, :end_time, :duration, :_destroy],
                                          futsal_game_invitations_attributes: [:id, :futsal_game_id, :user_id, :send_date, :status, :game_registration_id, :_destroy]);
    end
end
