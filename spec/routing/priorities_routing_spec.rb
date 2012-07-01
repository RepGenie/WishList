require "spec_helper"

describe PrioritiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/priorities" }.should route_to(:controller => "priorities", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/priorities/new" }.should route_to(:controller => "priorities", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/priorities/1" }.should route_to(:controller => "priorities", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/priorities/1/edit" }.should route_to(:controller => "priorities", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/priorities" }.should route_to(:controller => "priorities", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/priorities/1" }.should route_to(:controller => "priorities", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/priorities/1" }.should route_to(:controller => "priorities", :action => "destroy", :id => "1")
    end

  end
end
