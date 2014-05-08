require "spec_helper"

describe LocationTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/location_types").should route_to("location_types#index")
    end

    it "routes to #new" do
      get("/location_types/new").should route_to("location_types#new")
    end

    it "routes to #show" do
      get("/location_types/1").should route_to("location_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/location_types/1/edit").should route_to("location_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/location_types").should route_to("location_types#create")
    end

    it "routes to #update" do
      put("/location_types/1").should route_to("location_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/location_types/1").should route_to("location_types#destroy", :id => "1")
    end

  end
end
