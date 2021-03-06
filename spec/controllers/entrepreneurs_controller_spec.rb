# -*- encoding : utf-8 -*-
require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EntrepreneursController do

  # This should return the minimal set of attributes required to create a valid
  # Entrepreneur. As you add validations to Entrepreneur, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EntrepreneursController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all entrepreneurs as @entrepreneurs" do
      entrepreneur = Entrepreneur.create! valid_attributes
      get :index, {}, valid_session
      assigns(:entrepreneurs).should eq([entrepreneur])
    end
  end

  describe "GET show" do
    it "assigns the requested entrepreneur as @entrepreneur" do
      entrepreneur = Entrepreneur.create! valid_attributes
      get :show, {:id => entrepreneur.to_param}, valid_session
      assigns(:entrepreneur).should eq(entrepreneur)
    end
  end

  describe "GET new" do
    it "assigns a new entrepreneur as @entrepreneur" do
      get :new, {}, valid_session
      assigns(:entrepreneur).should be_a_new(Entrepreneur)
    end
  end

  describe "GET edit" do
    it "assigns the requested entrepreneur as @entrepreneur" do
      entrepreneur = Entrepreneur.create! valid_attributes
      get :edit, {:id => entrepreneur.to_param}, valid_session
      assigns(:entrepreneur).should eq(entrepreneur)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Entrepreneur" do
        expect {
          post :create, {:entrepreneur => valid_attributes}, valid_session
        }.to change(Entrepreneur, :count).by(1)
      end

      it "assigns a newly created entrepreneur as @entrepreneur" do
        post :create, {:entrepreneur => valid_attributes}, valid_session
        assigns(:entrepreneur).should be_a(Entrepreneur)
        assigns(:entrepreneur).should be_persisted
      end

      it "redirects to the created entrepreneur" do
        post :create, {:entrepreneur => valid_attributes}, valid_session
        response.should redirect_to(Entrepreneur.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved entrepreneur as @entrepreneur" do
        # Trigger the behavior that occurs when invalid params are submitted
        Entrepreneur.any_instance.stub(:save).and_return(false)
        post :create, {:entrepreneur => { "name" => "invalid value" }}, valid_session
        assigns(:entrepreneur).should be_a_new(Entrepreneur)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Entrepreneur.any_instance.stub(:save).and_return(false)
        post :create, {:entrepreneur => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested entrepreneur" do
        entrepreneur = Entrepreneur.create! valid_attributes
        # Assuming there are no other entrepreneurs in the database, this
        # specifies that the Entrepreneur created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Entrepreneur.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => entrepreneur.to_param, :entrepreneur => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested entrepreneur as @entrepreneur" do
        entrepreneur = Entrepreneur.create! valid_attributes
        put :update, {:id => entrepreneur.to_param, :entrepreneur => valid_attributes}, valid_session
        assigns(:entrepreneur).should eq(entrepreneur)
      end

      it "redirects to the entrepreneur" do
        entrepreneur = Entrepreneur.create! valid_attributes
        put :update, {:id => entrepreneur.to_param, :entrepreneur => valid_attributes}, valid_session
        response.should redirect_to(entrepreneur)
      end
    end

    describe "with invalid params" do
      it "assigns the entrepreneur as @entrepreneur" do
        entrepreneur = Entrepreneur.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Entrepreneur.any_instance.stub(:save).and_return(false)
        put :update, {:id => entrepreneur.to_param, :entrepreneur => { "name" => "invalid value" }}, valid_session
        assigns(:entrepreneur).should eq(entrepreneur)
      end

      it "re-renders the 'edit' template" do
        entrepreneur = Entrepreneur.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Entrepreneur.any_instance.stub(:save).and_return(false)
        put :update, {:id => entrepreneur.to_param, :entrepreneur => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested entrepreneur" do
      entrepreneur = Entrepreneur.create! valid_attributes
      expect {
        delete :destroy, {:id => entrepreneur.to_param}, valid_session
      }.to change(Entrepreneur, :count).by(-1)
    end

    it "redirects to the entrepreneurs list" do
      entrepreneur = Entrepreneur.create! valid_attributes
      delete :destroy, {:id => entrepreneur.to_param}, valid_session
      response.should redirect_to(entrepreneurs_url)
    end
  end

end
