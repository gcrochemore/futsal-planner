class WelcomeController < ApplicationController
  def index
  end
  def show
    @futsal_games = FutsalGame.joins(:team_home, :team_outside).all
    #@q = Goal.joins(:goal, :assist).accessible_by(current_ability).ransack(params[:q])
    #@goals = @q.result
    @top_buts = Goal.top_buts
  end
end
