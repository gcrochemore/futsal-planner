class GoalsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!, except: [:show, :show_embed, :mark_goal, :index]
  before_action :set_goal, only: [:show, :edit, :update, :destroy, :mark_goal, :show_embed]
  # GET /goals
  def index
    @q = Goal.accessible_by(current_ability).ransack(params[:q])
    @goals = @q.result.page(params[:page])
  end
  # GET /goals/1
  def show
    #self.views_number = self.views_number + 1
    #self.save
    @my_mark = GoalMark.where(goal: @goal, mac_address: request.ip, user: current_user)
  end

  def show_embed
    @my_mark = GoalMark.where(goal: @goal, mac_address: request.ip, user: current_user)
  end

  def mark_goal
    @mark_goal = GoalMark.where(goal: @goal, mac_address: request.ip, user: current_user).first || GoalMark.new
    @mark_goal.goal = @goal
    @mark_goal.mac_address = request.ip
    @mark_goal.user = current_user
    @mark_goal.mark = params[:mark]
    @mark_goal.save
    redirect_to @goal
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
    @my_mark = GoalMark.where(goal: @goal, mac_address: request.ip, user: current_user)    
  end

  # POST /goals
  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      redirect_to edit_goal_path(@goal), notice: 'Goal was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /goals/1
  def destroy
    @goal.destroy
    redirect_to goals_url, notice: 'Goal was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params

      params.require(:goal).permit(:futsal_game_id, :team_id, :goal_id, :own_goal, :assist_id, :goalkeeper_id, :time, :video_link)

    end
end
