class GoalMarksController < ApplicationController
  authorize_resource
  before_action :set_goal_mark, only: [:show, :edit, :update, :destroy]
  # GET /goal_marks
  def index
    @q = GoalMark.ransack(params[:q])
    @goal_marks = @q.result.page(params[:page])
  end
  # GET /goal_marks/1
  def show
  end

  # GET /goal_marks/new
  def new
    @goal_mark = GoalMark.new
  end

  # GET /goal_marks/1/edit
  def edit
  end

  # POST /goal_marks
  def create
    @goal_mark = GoalMark.new(goal_mark_params)

    if @goal_mark.save
      redirect_to @goal_mark, notice: 'Goal mark was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /goal_marks/1
  def update
    if @goal_mark.update(goal_mark_params)
      redirect_to @goal_mark, notice: 'Goal mark was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /goal_marks/1
  def destroy
    @goal_mark.destroy
    redirect_to goal_marks_url, notice: 'Goal mark was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_mark
      @goal_mark = GoalMark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_mark_params

      params.require(:goal_mark).permit(:goal_id, :mark, :user_id, :mac_address)

    end
end
