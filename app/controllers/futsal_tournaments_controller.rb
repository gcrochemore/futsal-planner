

class FutsalTournamentsController < ApplicationController
  authorize_resource
  before_action :set_futsal_tournament, only: [:show, :edit, :update, :destroy]
  # GET /futsal_tournaments
  def index
    @q = FutsalTournament.ransack(params[:q])
    @futsal_tournaments = @q.result.page(params[:page])
  end
  # GET /futsal_tournaments/1
  def show
  end

  # GET /futsal_tournaments/new
  def new
    @futsal_tournament = FutsalTournament.new
  end

  # GET /futsal_tournaments/1/edit
  def edit
  end

  # POST /futsal_tournaments
  def create
    @futsal_tournament = FutsalTournament.new(futsal_tournament_params)

    if @futsal_tournament.save
      redirect_to @futsal_tournament, notice: 'Futsal tournament was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_tournaments/1
  def update
    if @futsal_tournament.update(futsal_tournament_params)
      redirect_to @futsal_tournament, notice: 'Futsal tournament was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_tournaments/1
  def destroy
    @futsal_tournament.destroy
    redirect_to futsal_tournaments_url, notice: 'Futsal tournament was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_tournament
      @futsal_tournament = FutsalTournament.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_tournament_params

      params.require(:futsal_tournament).permit(:date, :duration, :futsal_field_id)

    end
end
