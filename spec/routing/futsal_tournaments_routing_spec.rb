require "rails_helper"

RSpec.describe FutsalTournamentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/futsal_tournaments").to route_to("futsal_tournaments#index")
    end

    it "routes to #new" do
      expect(:get => "/futsal_tournaments/new").to route_to("futsal_tournaments#new")
    end

    it "routes to #show" do
      expect(:get => "/futsal_tournaments/1").to route_to("futsal_tournaments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/futsal_tournaments/1/edit").to route_to("futsal_tournaments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/futsal_tournaments").to route_to("futsal_tournaments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/futsal_tournaments/1").to route_to("futsal_tournaments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/futsal_tournaments/1").to route_to("futsal_tournaments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/futsal_tournaments/1").to route_to("futsal_tournaments#destroy", :id => "1")
    end

  end
end
