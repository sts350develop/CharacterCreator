require "spec_helper"

describe DollsController do
  describe "routing" do

    it "routes to #index" do
      get("/dolls").should route_to("dolls#index")
    end

    it "routes to #new" do
      get("/dolls/new").should route_to("dolls#new")
    end

    it "routes to #show" do
      get("/dolls/1").should route_to("dolls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dolls/1/edit").should route_to("dolls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dolls").should route_to("dolls#create")
    end

    it "routes to #update" do
      put("/dolls/1").should route_to("dolls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dolls/1").should route_to("dolls#destroy", :id => "1")
    end

  end
end
