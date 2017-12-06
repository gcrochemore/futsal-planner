require 'rails_helper'

RSpec.describe "FutsalGamePlayerPositionChanges", type: :request do
  describe "GET /futsal_game_player_position_changes" do
    it "works! (now write some real specs)" do
      get futsal_game_player_position_changes_path
      expect(response).to have_http_status(200)
    end
  end
end
