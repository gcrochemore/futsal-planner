require "rails_helper"

RSpec.describe FutsalTournamentPlayerRegistrationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/futsal_tournament_player_registrations").to route_to("futsal_tournament_player_registrations#index")
    end

    it "routes to #new" do
      expect(:get => "/futsal_tournament_player_registrations/new").to route_to("futsal_tournament_player_registrations#new")
    end

    it "routes to #show" do
      expect(:get => "/futsal_tournament_player_registrations/1").to route_to("futsal_tournament_player_registrations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/futsal_tournament_player_registrations/1/edit").to route_to("futsal_tournament_player_registrations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/futsal_tournament_player_registrations").to route_to("futsal_tournament_player_registrations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/futsal_tournament_player_registrations/1").to route_to("futsal_tournament_player_registrations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/futsal_tournament_player_registrations/1").to route_to("futsal_tournament_player_registrations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/futsal_tournament_player_registrations/1").to route_to("futsal_tournament_player_registrations#destroy", :id => "1")
    end

  end
end
