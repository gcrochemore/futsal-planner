class WelcomeController < ApplicationController
  def index
  end
  def show
    @futsal_games = FutsalGame.all
    @q = Goal.accessible_by(current_ability).ransack(params[:q])
    @goals = @q.result
  end
end
