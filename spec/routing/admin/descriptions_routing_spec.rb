require "rails_helper"

RSpec.describe Admin::DescriptionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/descriptions").to route_to("admin/descriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/descriptions/new").to route_to("admin/descriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/descriptions/1").to route_to("admin/descriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/descriptions/1/edit").to route_to("admin/descriptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/descriptions").to route_to("admin/descriptions#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/descriptions/1").to route_to("admin/descriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/descriptions/1").to route_to("admin/descriptions#destroy", :id => "1")
    end

  end
end
