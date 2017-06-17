require "rails_helper"

RSpec.describe FutsalPositionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/futsal_positions").to route_to("futsal_positions#index")
    end

    it "routes to #new" do
      expect(:get => "/futsal_positions/new").to route_to("futsal_positions#new")
    end

    it "routes to #show" do
      expect(:get => "/futsal_positions/1").to route_to("futsal_positions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/futsal_positions/1/edit").to route_to("futsal_positions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/futsal_positions").to route_to("futsal_positions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/futsal_positions/1").to route_to("futsal_positions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/futsal_positions/1").to route_to("futsal_positions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/futsal_positions/1").to route_to("futsal_positions#destroy", :id => "1")
    end

  end
end
