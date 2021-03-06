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

RSpec.describe UserFutsalTrophiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # UserFutsalTrophy. As you add validations to UserFutsalTrophy, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserFutsalTrophiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all user_futsal_trophies as @user_futsal_trophies" do
      user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:user_futsal_trophies)).to eq([user_futsal_trophy])
    end
  end

  describe "GET #show" do
    it "assigns the requested user_futsal_trophy as @user_futsal_trophy" do
      user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
      get :show, params: {id: user_futsal_trophy.to_param}, session: valid_session
      expect(assigns(:user_futsal_trophy)).to eq(user_futsal_trophy)
    end
  end

  describe "GET #new" do
    it "assigns a new user_futsal_trophy as @user_futsal_trophy" do
      get :new, params: {}, session: valid_session
      expect(assigns(:user_futsal_trophy)).to be_a_new(UserFutsalTrophy)
    end
  end

  describe "GET #edit" do
    it "assigns the requested user_futsal_trophy as @user_futsal_trophy" do
      user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
      get :edit, params: {id: user_futsal_trophy.to_param}, session: valid_session
      expect(assigns(:user_futsal_trophy)).to eq(user_futsal_trophy)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new UserFutsalTrophy" do
        expect {
          post :create, params: {user_futsal_trophy: valid_attributes}, session: valid_session
        }.to change(UserFutsalTrophy, :count).by(1)
      end

      it "assigns a newly created user_futsal_trophy as @user_futsal_trophy" do
        post :create, params: {user_futsal_trophy: valid_attributes}, session: valid_session
        expect(assigns(:user_futsal_trophy)).to be_a(UserFutsalTrophy)
        expect(assigns(:user_futsal_trophy)).to be_persisted
      end

      it "redirects to the created user_futsal_trophy" do
        post :create, params: {user_futsal_trophy: valid_attributes}, session: valid_session
        expect(response).to redirect_to(UserFutsalTrophy.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user_futsal_trophy as @user_futsal_trophy" do
        post :create, params: {user_futsal_trophy: invalid_attributes}, session: valid_session
        expect(assigns(:user_futsal_trophy)).to be_a_new(UserFutsalTrophy)
      end

      it "re-renders the 'new' template" do
        post :create, params: {user_futsal_trophy: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_futsal_trophy" do
        user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
        put :update, params: {id: user_futsal_trophy.to_param, user_futsal_trophy: new_attributes}, session: valid_session
        user_futsal_trophy.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested user_futsal_trophy as @user_futsal_trophy" do
        user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
        put :update, params: {id: user_futsal_trophy.to_param, user_futsal_trophy: valid_attributes}, session: valid_session
        expect(assigns(:user_futsal_trophy)).to eq(user_futsal_trophy)
      end

      it "redirects to the user_futsal_trophy" do
        user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
        put :update, params: {id: user_futsal_trophy.to_param, user_futsal_trophy: valid_attributes}, session: valid_session
        expect(response).to redirect_to(user_futsal_trophy)
      end
    end

    context "with invalid params" do
      it "assigns the user_futsal_trophy as @user_futsal_trophy" do
        user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
        put :update, params: {id: user_futsal_trophy.to_param, user_futsal_trophy: invalid_attributes}, session: valid_session
        expect(assigns(:user_futsal_trophy)).to eq(user_futsal_trophy)
      end

      it "re-renders the 'edit' template" do
        user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
        put :update, params: {id: user_futsal_trophy.to_param, user_futsal_trophy: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user_futsal_trophy" do
      user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
      expect {
        delete :destroy, params: {id: user_futsal_trophy.to_param}, session: valid_session
      }.to change(UserFutsalTrophy, :count).by(-1)
    end

    it "redirects to the user_futsal_trophies list" do
      user_futsal_trophy = UserFutsalTrophy.create! valid_attributes
      delete :destroy, params: {id: user_futsal_trophy.to_param}, session: valid_session
      expect(response).to redirect_to(user_futsal_trophies_url)
    end
  end

end
