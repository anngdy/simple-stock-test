require "rails_helper"

RSpec.describe AvailableProductsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/available_products").to route_to("available_products#index")
    end

    it "routes to #new" do
      expect(:get => "/available_products/new").to route_to("available_products#new")
    end

    it "routes to #show" do
      expect(:get => "/available_products/1").to route_to("available_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/available_products/1/edit").to route_to("available_products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/available_products").to route_to("available_products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/available_products/1").to route_to("available_products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/available_products/1").to route_to("available_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/available_products/1").to route_to("available_products#destroy", :id => "1")
    end

  end
end
