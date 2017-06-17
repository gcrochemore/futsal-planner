class FutsalPositionsController < ApplicationController
  authorize_resource
  before_action :set_futsal_position, only: [:show, :edit, :update, :destroy]
  # GET /futsal_positions
  def index
    @q = FutsalPosition.ransack(params[:q])
    @futsal_positions = @q.result.page(params[:page])
  end
  # GET /futsal_positions/1
  def show
  end

  # GET /futsal_positions/new
  def new
    @futsal_position = FutsalPosition.new
  end

  # GET /futsal_positions/1/edit
  def edit
  end

  # POST /futsal_positions
  def create
    @futsal_position = FutsalPosition.new(futsal_position_params)

    if @futsal_position.save
      redirect_to @futsal_position, notice: 'Futsal position was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_positions/1
  def update
    if @futsal_position.update(futsal_position_params)
      redirect_to @futsal_position, notice: 'Futsal position was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_positions/1
  def destroy
    @futsal_position.destroy
    redirect_to futsal_positions_url, notice: 'Futsal position was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_position
      @futsal_position = FutsalPosition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_position_params

      params.require(:futsal_position).permit(:name, :abbreviation)

    end
end
