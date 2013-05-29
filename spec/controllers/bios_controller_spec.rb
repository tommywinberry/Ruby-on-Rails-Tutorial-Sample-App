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

describe BiosController do

  # This should return the minimal set of attributes required to create a valid
  # Bio. As you add validations to Bio, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BiosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all bios as @bios" do
      bio = Bio.create! valid_attributes
      get :index, {}, valid_session
      assigns(:bios).should eq([bio])
    end
  end

  describe "GET show" do
    it "assigns the requested bio as @bio" do
      bio = Bio.create! valid_attributes
      get :show, {:id => bio.to_param}, valid_session
      assigns(:bio).should eq(bio)
    end
  end

  describe "GET new" do
    it "assigns a new bio as @bio" do
      get :new, {}, valid_session
      assigns(:bio).should be_a_new(Bio)
    end
  end

  describe "GET edit" do
    it "assigns the requested bio as @bio" do
      bio = Bio.create! valid_attributes
      get :edit, {:id => bio.to_param}, valid_session
      assigns(:bio).should eq(bio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Bio" do
        expect {
          post :create, {:bio => valid_attributes}, valid_session
        }.to change(Bio, :count).by(1)
      end

      it "assigns a newly created bio as @bio" do
        post :create, {:bio => valid_attributes}, valid_session
        assigns(:bio).should be_a(Bio)
        assigns(:bio).should be_persisted
      end

      it "redirects to the created bio" do
        post :create, {:bio => valid_attributes}, valid_session
        response.should redirect_to(Bio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bio as @bio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bio.any_instance.stub(:save).and_return(false)
        post :create, {:bio => {}}, valid_session
        assigns(:bio).should be_a_new(Bio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bio.any_instance.stub(:save).and_return(false)
        post :create, {:bio => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested bio" do
        bio = Bio.create! valid_attributes
        # Assuming there are no other bios in the database, this
        # specifies that the Bio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Bio.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => bio.to_param, :bio => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested bio as @bio" do
        bio = Bio.create! valid_attributes
        put :update, {:id => bio.to_param, :bio => valid_attributes}, valid_session
        assigns(:bio).should eq(bio)
      end

      it "redirects to the bio" do
        bio = Bio.create! valid_attributes
        put :update, {:id => bio.to_param, :bio => valid_attributes}, valid_session
        response.should redirect_to(bio)
      end
    end

    describe "with invalid params" do
      it "assigns the bio as @bio" do
        bio = Bio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Bio.any_instance.stub(:save).and_return(false)
        put :update, {:id => bio.to_param, :bio => {}}, valid_session
        assigns(:bio).should eq(bio)
      end

      it "re-renders the 'edit' template" do
        bio = Bio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Bio.any_instance.stub(:save).and_return(false)
        put :update, {:id => bio.to_param, :bio => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested bio" do
      bio = Bio.create! valid_attributes
      expect {
        delete :destroy, {:id => bio.to_param}, valid_session
      }.to change(Bio, :count).by(-1)
    end

    it "redirects to the bios list" do
      bio = Bio.create! valid_attributes
      delete :destroy, {:id => bio.to_param}, valid_session
      response.should redirect_to(bios_url)
    end
  end

end
