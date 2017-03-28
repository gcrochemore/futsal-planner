class GoalsController < ApplicationController
  authorize_resource
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  # GET /goals
  def index
    @q = Goal.ransack(params[:q])
    @goals = @q.result.page(params[:page])
  end
  # GET /goals/1
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
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
      redirect_to @goal, notice: 'Goal was successfully updated.'
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

      params.require(:goal).permit(:FutsalGame_id, :team_id, :goal, :assist, :time)

    end
end
