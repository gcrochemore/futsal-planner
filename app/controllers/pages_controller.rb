class PagesController < ApplicationController
  def index
    if user_signed_in?
      @user = current_user
      @top_buts = Goal.top_buts

      render :dashboard
    else
      @futsal_games = FutsalGame.joins(:team_home, :team_outside).all

      render :welcome
    end
  end

  def how_the_mark_is_calculated
    user_id = params['user_id'] || 1
    @user = User.find(user_id)
    @futsal_game_positions = FutsalPosition.all
  end
end
