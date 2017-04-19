require "rails_helper"

RSpec.describe FanCommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fan_comments").to route_to("fan_comments#index")
    end

    it "routes to #new" do
      expect(:get => "/fan_comments/new").to route_to("fan_comments#new")
    end

    it "routes to #show" do
      expect(:get => "/fan_comments/1").to route_to("fan_comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fan_comments/1/edit").to route_to("fan_comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fan_comments").to route_to("fan_comments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fan_comments/1").to route_to("fan_comments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fan_comments/1").to route_to("fan_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fan_comments/1").to route_to("fan_comments#destroy", :id => "1")
    end

  end
end
