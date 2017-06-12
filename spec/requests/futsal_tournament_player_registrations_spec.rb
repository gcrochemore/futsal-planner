require 'rails_helper'

RSpec.describe "FutsalTournamentPlayerRegistrations", type: :request do
  describe "GET /futsal_tournament_player_registrations" do
    it "works! (now write some real specs)" do
      get futsal_tournament_player_registrations_path
      expect(response).to have_http_status(200)
    end
  end
end
