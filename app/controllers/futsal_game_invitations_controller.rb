class FutsalGameInvitationsController < ApplicationController
  authorize_resource
  before_action :set_futsal_game_invitation, only: [:show, :edit, :update, :destroy]
  # GET /futsal_game_invitations
  def index
    @q = FutsalGameInvitation.ransack(params[:q])
    @futsal_game_invitations = @q.result.page(params[:page])
  end
  # GET /futsal_game_invitations/1
  def show
  end

  # GET /futsal_game_invitations/new
  def new
    @futsal_game_invitation = FutsalGameInvitation.new
  end

  # GET /futsal_game_invitations/1/edit
  def edit
  end

  # POST /futsal_game_invitations
  def create
    @futsal_game_invitation = FutsalGameInvitation.new(futsal_game_invitation_params)

    if @futsal_game_invitation.save
      redirect_to @futsal_game_invitation, notice: 'Futsal game invitation was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /futsal_game_invitations/1
  def update
    if @futsal_game_invitation.update(futsal_game_invitation_params)
      redirect_to @futsal_game_invitation, notice: 'Futsal game invitation was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /futsal_game_invitations/1
  def destroy
    @futsal_game_invitation.destroy
    redirect_to futsal_game_invitations_url, notice: 'Futsal game invitation was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_futsal_game_invitation
      @futsal_game_invitation = FutsalGameInvitation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def futsal_game_invitation_params

      params.require(:futsal_game_invitation).permit(:futsal_game_id, :user_id, :send_date, :status, :game_registration_id)

    end
end
