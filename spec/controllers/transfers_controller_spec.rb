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

describe TransfersController do

  # This should return the minimal set of attributes required to create a valid
  # Transfer. As you add validations to Transfer, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TransfersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all transfers as @transfers" do
      transfer = Transfer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:transfers).should eq([transfer])
    end
  end

  describe "GET show" do
    it "assigns the requested transfer as @transfer" do
      transfer = Transfer.create! valid_attributes
      get :show, {:id => transfer.to_param}, valid_session
      assigns(:transfer).should eq(transfer)
    end
  end

  describe "GET new" do
    it "assigns a new transfer as @transfer" do
      get :new, {}, valid_session
      assigns(:transfer).should be_a_new(Transfer)
    end
  end

  describe "GET edit" do
    it "assigns the requested transfer as @transfer" do
      transfer = Transfer.create! valid_attributes
      get :edit, {:id => transfer.to_param}, valid_session
      assigns(:transfer).should eq(transfer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Transfer" do
        expect {
          post :create, {:transfer => valid_attributes}, valid_session
        }.to change(Transfer, :count).by(1)
      end

      it "assigns a newly created transfer as @transfer" do
        post :create, {:transfer => valid_attributes}, valid_session
        assigns(:transfer).should be_a(Transfer)
        assigns(:transfer).should be_persisted
      end

      it "redirects to the created transfer" do
        post :create, {:transfer => valid_attributes}, valid_session
        response.should redirect_to(Transfer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved transfer as @transfer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Transfer.any_instance.stub(:save).and_return(false)
        post :create, {:transfer => {}}, valid_session
        assigns(:transfer).should be_a_new(Transfer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Transfer.any_instance.stub(:save).and_return(false)
        post :create, {:transfer => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested transfer" do
        transfer = Transfer.create! valid_attributes
        # Assuming there are no other transfers in the database, this
        # specifies that the Transfer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Transfer.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => transfer.to_param, :transfer => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested transfer as @transfer" do
        transfer = Transfer.create! valid_attributes
        put :update, {:id => transfer.to_param, :transfer => valid_attributes}, valid_session
        assigns(:transfer).should eq(transfer)
      end

      it "redirects to the transfer" do
        transfer = Transfer.create! valid_attributes
        put :update, {:id => transfer.to_param, :transfer => valid_attributes}, valid_session
        response.should redirect_to(transfer)
      end
    end

    describe "with invalid params" do
      it "assigns the transfer as @transfer" do
        transfer = Transfer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Transfer.any_instance.stub(:save).and_return(false)
        put :update, {:id => transfer.to_param, :transfer => {}}, valid_session
        assigns(:transfer).should eq(transfer)
      end

      it "re-renders the 'edit' template" do
        transfer = Transfer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Transfer.any_instance.stub(:save).and_return(false)
        put :update, {:id => transfer.to_param, :transfer => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested transfer" do
      transfer = Transfer.create! valid_attributes
      expect {
        delete :destroy, {:id => transfer.to_param}, valid_session
      }.to change(Transfer, :count).by(-1)
    end

    it "redirects to the transfers list" do
      transfer = Transfer.create! valid_attributes
      delete :destroy, {:id => transfer.to_param}, valid_session
      response.should redirect_to(transfers_url)
    end
  end

end
