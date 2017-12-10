require "rails_helper"

RSpec.describe FutsalTrophiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/futsal_trophies").to route_to("futsal_trophies#index")
    end

    it "routes to #new" do
      expect(:get => "/futsal_trophies/new").to route_to("futsal_trophies#new")
    end

    it "routes to #show" do
      expect(:get => "/futsal_trophies/1").to route_to("futsal_trophies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/futsal_trophies/1/edit").to route_to("futsal_trophies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/futsal_trophies").to route_to("futsal_trophies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/futsal_trophies/1").to route_to("futsal_trophies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/futsal_trophies/1").to route_to("futsal_trophies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/futsal_trophies/1").to route_to("futsal_trophies#destroy", :id => "1")
    end

  end
end
