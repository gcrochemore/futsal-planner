class UserFutsalTrophiesController < ApplicationController
  authorize_resource
  before_action :set_user_futsal_trophy, only: [:show, :edit, :update, :destroy]
  # GET /user_futsal_trophies
  def index
    @q = UserFutsalTrophy.ransack(params[:q])
    @user_futsal_trophies = @q.result.page(params[:page])
  end
  # GET /user_futsal_trophies/1
  def show
  end

  # GET /user_futsal_trophies/new
  def new
    @user_futsal_trophy = UserFutsalTrophy.new
  end

  # GET /user_futsal_trophies/1/edit
  def edit
  end

  # POST /user_futsal_trophies
  def create
    @user_futsal_trophy = UserFutsalTrophy.new(user_futsal_trophy_params)

    if @user_futsal_trophy.save
      redirect_to @user_futsal_trophy, notice: 'User futsal trophy was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /user_futsal_trophies/1
  def update
    if @user_futsal_trophy.update(user_futsal_trophy_params)
      redirect_to @user_futsal_trophy, notice: 'User futsal trophy was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /user_futsal_trophies/1
  def destroy
    @user_futsal_trophy.destroy
    redirect_to user_futsal_trophies_url, notice: 'User futsal trophy was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_futsal_trophy
      @user_futsal_trophy = UserFutsalTrophy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_futsal_trophy_params

      params.require(:user_futsal_trophy).permit(:user_id, :futsal_trophy_id, :linked_entity_id, :linked_entity_type)

    end
end
