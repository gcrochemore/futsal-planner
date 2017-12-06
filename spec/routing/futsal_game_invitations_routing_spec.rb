require "rails_helper"

RSpec.describe FutsalGameInvitationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/futsal_game_invitations").to route_to("futsal_game_invitations#index")
    end

    it "routes to #new" do
      expect(:get => "/futsal_game_invitations/new").to route_to("futsal_game_invitations#new")
    end

    it "routes to #show" do
      expect(:get => "/futsal_game_invitations/1").to route_to("futsal_game_invitations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/futsal_game_invitations/1/edit").to route_to("futsal_game_invitations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/futsal_game_invitations").to route_to("futsal_game_invitations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/futsal_game_invitations/1").to route_to("futsal_game_invitations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/futsal_game_invitations/1").to route_to("futsal_game_invitations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/futsal_game_invitations/1").to route_to("futsal_game_invitations#destroy", :id => "1")
    end

  end
end
