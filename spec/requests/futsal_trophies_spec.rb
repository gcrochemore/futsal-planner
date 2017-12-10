require 'rails_helper'

RSpec.describe "FutsalTrophies", type: :request do
  describe "GET /futsal_trophies" do
    it "works! (now write some real specs)" do
      get futsal_trophies_path
      expect(response).to have_http_status(200)
    end
  end
end
