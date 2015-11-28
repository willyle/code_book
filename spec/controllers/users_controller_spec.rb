require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let (:valid_attributes){
    @valid_attributes = {
      username: "testuser",
      password: "password"
    }
  }
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    let(:user){User.new(valid_attributes)}
    it "creates new user" do
      expect(user.username).to eq("testuser")
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      User.create(username: "testuser", password: "password")
      get :edit, {id: 1}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      User.create(username: "testuser", password: "password")
      get :show, {id: 1}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    let(:user){User.create(valid_attributes)}
    it "returns a user" do
      expect(user.username).to eq("testuser")
    end
    it "returns no user" do
      user.destroy
      expect(User.count).to eq(0)
    end
  end

end
