require "rails_helper"

RSpec.describe FutsalGamePlayerPositionChangesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/futsal_game_player_position_changes").to route_to("futsal_game_player_position_changes#index")
    end

    it "routes to #new" do
      expect(:get => "/futsal_game_player_position_changes/new").to route_to("futsal_game_player_position_changes#new")
    end

    it "routes to #show" do
      expect(:get => "/futsal_game_player_position_changes/1").to route_to("futsal_game_player_position_changes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/futsal_game_player_position_changes/1/edit").to route_to("futsal_game_player_position_changes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/futsal_game_player_position_changes").to route_to("futsal_game_player_position_changes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/futsal_game_player_position_changes/1").to route_to("futsal_game_player_position_changes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/futsal_game_player_position_changes/1").to route_to("futsal_game_player_position_changes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/futsal_game_player_position_changes/1").to route_to("futsal_game_player_position_changes#destroy", :id => "1")
    end

  end
end
