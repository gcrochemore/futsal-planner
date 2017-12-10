require "rails_helper"

RSpec.describe UserFutsalTrophiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_futsal_trophies").to route_to("user_futsal_trophies#index")
    end

    it "routes to #new" do
      expect(:get => "/user_futsal_trophies/new").to route_to("user_futsal_trophies#new")
    end

    it "routes to #show" do
      expect(:get => "/user_futsal_trophies/1").to route_to("user_futsal_trophies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_futsal_trophies/1/edit").to route_to("user_futsal_trophies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_futsal_trophies").to route_to("user_futsal_trophies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_futsal_trophies/1").to route_to("user_futsal_trophies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_futsal_trophies/1").to route_to("user_futsal_trophies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_futsal_trophies/1").to route_to("user_futsal_trophies#destroy", :id => "1")
    end

  end
end
