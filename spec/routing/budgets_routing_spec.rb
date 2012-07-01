require "spec_helper"

describe BudgetsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/budgets" }.should route_to(:controller => "budgets", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/budgets/new" }.should route_to(:controller => "budgets", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/budgets/1" }.should route_to(:controller => "budgets", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/budgets/1/edit" }.should route_to(:controller => "budgets", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/budgets" }.should route_to(:controller => "budgets", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/budgets/1" }.should route_to(:controller => "budgets", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/budgets/1" }.should route_to(:controller => "budgets", :action => "destroy", :id => "1")
    end

  end
end
