require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe PrioritiesController do

  def mock_priority(stubs={})
    @mock_priority ||= mock_model(Priority, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all priorities as @priorities" do
      Priority.stub(:all) { [mock_priority] }
      get :index
      assigns(:priorities).should eq([mock_priority])
    end
  end

  describe "GET show" do
    it "assigns the requested priority as @priority" do
      Priority.stub(:find).with("37") { mock_priority }
      get :show, :id => "37"
      assigns(:priority).should be(mock_priority)
    end
  end

  describe "GET new" do
    it "assigns a new priority as @priority" do
      Priority.stub(:new) { mock_priority }
      get :new
      assigns(:priority).should be(mock_priority)
    end
  end

  describe "GET edit" do
    it "assigns the requested priority as @priority" do
      Priority.stub(:find).with("37") { mock_priority }
      get :edit, :id => "37"
      assigns(:priority).should be(mock_priority)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created priority as @priority" do
        Priority.stub(:new).with({'these' => 'params'}) { mock_priority(:save => true) }
        post :create, :priority => {'these' => 'params'}
        assigns(:priority).should be(mock_priority)
      end

      it "redirects to the created priority" do
        Priority.stub(:new) { mock_priority(:save => true) }
        post :create, :priority => {}
        response.should redirect_to(priority_url(mock_priority))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved priority as @priority" do
        Priority.stub(:new).with({'these' => 'params'}) { mock_priority(:save => false) }
        post :create, :priority => {'these' => 'params'}
        assigns(:priority).should be(mock_priority)
      end

      it "re-renders the 'new' template" do
        Priority.stub(:new) { mock_priority(:save => false) }
        post :create, :priority => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested priority" do
        Priority.stub(:find).with("37") { mock_priority }
        mock_priority.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :priority => {'these' => 'params'}
      end

      it "assigns the requested priority as @priority" do
        Priority.stub(:find) { mock_priority(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:priority).should be(mock_priority)
      end

      it "redirects to the priority" do
        Priority.stub(:find) { mock_priority(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(priority_url(mock_priority))
      end
    end

    describe "with invalid params" do
      it "assigns the priority as @priority" do
        Priority.stub(:find) { mock_priority(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:priority).should be(mock_priority)
      end

      it "re-renders the 'edit' template" do
        Priority.stub(:find) { mock_priority(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested priority" do
      Priority.stub(:find).with("37") { mock_priority }
      mock_priority.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the priorities list" do
      Priority.stub(:find) { mock_priority }
      delete :destroy, :id => "1"
      response.should redirect_to(priorities_url)
    end
  end

end
