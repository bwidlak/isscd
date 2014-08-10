require 'rails_helper'

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

RSpec.describe Admin::DescriptionsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Description. As you add validations to Admin::Description, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::DescriptionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all admin_descriptions as @admin_descriptions" do
      description = Admin::Description.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:admin_descriptions)).to eq([description])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_description as @admin_description" do
      description = Admin::Description.create! valid_attributes
      get :show, {:id => description.to_param}, valid_session
      expect(assigns(:admin_description)).to eq(description)
    end
  end

  describe "GET new" do
    it "assigns a new admin_description as @admin_description" do
      get :new, {}, valid_session
      expect(assigns(:admin_description)).to be_a_new(Admin::Description)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_description as @admin_description" do
      description = Admin::Description.create! valid_attributes
      get :edit, {:id => description.to_param}, valid_session
      expect(assigns(:admin_description)).to eq(description)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Description" do
        expect {
          post :create, {:admin_description => valid_attributes}, valid_session
        }.to change(Admin::Description, :count).by(1)
      end

      it "assigns a newly created admin_description as @admin_description" do
        post :create, {:admin_description => valid_attributes}, valid_session
        expect(assigns(:admin_description)).to be_a(Admin::Description)
        expect(assigns(:admin_description)).to be_persisted
      end

      it "redirects to the created admin_description" do
        post :create, {:admin_description => valid_attributes}, valid_session
        expect(response).to redirect_to(Admin::Description.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_description as @admin_description" do
        post :create, {:admin_description => invalid_attributes}, valid_session
        expect(assigns(:admin_description)).to be_a_new(Admin::Description)
      end

      it "re-renders the 'new' template" do
        post :create, {:admin_description => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested admin_description" do
        description = Admin::Description.create! valid_attributes
        put :update, {:id => description.to_param, :admin_description => new_attributes}, valid_session
        description.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested admin_description as @admin_description" do
        description = Admin::Description.create! valid_attributes
        put :update, {:id => description.to_param, :admin_description => valid_attributes}, valid_session
        expect(assigns(:admin_description)).to eq(description)
      end

      it "redirects to the admin_description" do
        description = Admin::Description.create! valid_attributes
        put :update, {:id => description.to_param, :admin_description => valid_attributes}, valid_session
        expect(response).to redirect_to(description)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_description as @admin_description" do
        description = Admin::Description.create! valid_attributes
        put :update, {:id => description.to_param, :admin_description => invalid_attributes}, valid_session
        expect(assigns(:admin_description)).to eq(description)
      end

      it "re-renders the 'edit' template" do
        description = Admin::Description.create! valid_attributes
        put :update, {:id => description.to_param, :admin_description => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_description" do
      description = Admin::Description.create! valid_attributes
      expect {
        delete :destroy, {:id => description.to_param}, valid_session
      }.to change(Admin::Description, :count).by(-1)
    end

    it "redirects to the admin_descriptions list" do
      description = Admin::Description.create! valid_attributes
      delete :destroy, {:id => description.to_param}, valid_session
      expect(response).to redirect_to(admin_descriptions_url)
    end
  end

end
