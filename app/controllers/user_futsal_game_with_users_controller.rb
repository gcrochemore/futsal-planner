class UserFutsalGameWithUsersController < ApplicationController
  authorize_resource
  before_action :set_user_futsal_game_with_user, only: [:show, :edit, :update, :destroy]
  # GET /user_futsal_game_with_users
  def index
    @q = UserFutsalGameWithUser.ransack(params[:q])
    @user_futsal_game_with_users = @q.result.page(params[:page])
  end
  # GET /user_futsal_game_with_users/1
  def show
  end

  # GET /user_futsal_game_with_users/new
  def new
    @user_futsal_game_with_user = UserFutsalGameWithUser.new
  end

  # GET /user_futsal_game_with_users/1/edit
  def edit
  end

  # POST /user_futsal_game_with_users
  def create
    @user_futsal_game_with_user = UserFutsalGameWithUser.new(user_futsal_game_with_user_params)

    if @user_futsal_game_with_user.save
      redirect_to @user_futsal_game_with_user, notice: 'User futsal game with user was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /user_futsal_game_with_users/1
  def update
    if @user_futsal_game_with_user.update(user_futsal_game_with_user_params)
      redirect_to @user_futsal_game_with_user, notice: 'User futsal game with user was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /user_futsal_game_with_users/1
  def destroy
    @user_futsal_game_with_user.destroy
    redirect_to user_futsal_game_with_users_url, notice: 'User futsal game with user was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_futsal_game_with_user
      @user_futsal_game_with_user = UserFutsalGameWithUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_futsal_game_with_user_params

      params.require(:user_futsal_game_with_user).permit(:user_id, :other_user_id, :futsal_game, :user_goal, :user_assist, :other_user_goal, :other_user_assist, :match_with, :victory_with, :draw_with, :lose_with, :match_against, :victory_against, :draw_against, :lose_against)

    end
end
