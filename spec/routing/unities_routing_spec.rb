require "spec_helper"

describe UnitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/unities").should route_to("unities#index")
    end

    it "routes to #new" do
      get("/unities/new").should route_to("unities#new")
    end

    it "routes to #show" do
      get("/unities/1").should route_to("unities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/unities/1/edit").should route_to("unities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/unities").should route_to("unities#create")
    end

    it "routes to #update" do
      put("/unities/1").should route_to("unities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/unities/1").should route_to("unities#destroy", :id => "1")
    end

  end
end
