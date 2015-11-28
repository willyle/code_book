require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  before (:each) do 
    User.create(username: "testuser", password: "password")
    Profile.create(user_id: 1,  email: "test@test.com")
  end

  describe "login test" do
    it "returns http success" do
      User.authenticate("test@test.com", "password")
      expect(response).to have_http_status(:success)
    end
  end

  describe "session destroy test" do
    let(:session){User.authenticate("test@test.com", "password")}
    it "returns no session" do
      delete :destroy 
      expect(response).to redirect_to(root_path)
    end
  end

end
