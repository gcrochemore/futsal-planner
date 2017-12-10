class FutsalTrophiesController < ApplicationController
  authorize_resource
  before_action :set_futsal_trophy, only: [:show, :edit, :update, :destroy]
  # GET /futsal_trophies
  def index
    @q = FutsalTrophy.ransack(params[:q])
    @futsal_trophies = @q.result.page(params[:page])
  end
  # GET /futsal_trophies/1
  def show
  end

  # GET /futsal_trophies/new
  def new
    @futsal_trophy = FutsalTrophy.new
  end

  # GET /futsal_trophies/1/edit
  def edit
  end

  # POST /futsal_trophies
  def create
    @futsal_trophy = FutsalTrophy.new(futsal_trophy_params)

    if @futsal_trophy.save
      redirect_to @futsal_trophy, notice: 'Futsal trophy was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_trophies/1
  def update
    if @futsal_trophy.update(futsal_trophy_params)
      redirect_to @futsal_trophy, notice: 'Futsal trophy was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_trophies/1
  def destroy
    @futsal_trophy.destroy
    redirect_to futsal_trophies_url, notice: 'Futsal trophy was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_trophy
      @futsal_trophy = FutsalTrophy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_trophy_params

      params.require(:futsal_trophy).permit(:name, :points, :description)

    end
end
