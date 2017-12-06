require 'rails_helper'

RSpec.describe "FutsalGameInvitations", type: :request do
  describe "GET /futsal_game_invitations" do
    it "works! (now write some real specs)" do
      get futsal_game_invitations_path
      expect(response).to have_http_status(200)
    end
  end
end
