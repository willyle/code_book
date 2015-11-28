require 'rails_helper'

RSpec.describe User, type: :model do
  attr_accessor :password
  let (:valid_attributes){
  	@valid_attributes = {
  		password: "password",
  		username: "testuser"
  	}
  }
  describe "#new validation presence" do
  	let(:user){User.create(valid_attributes)}
  	it "will be invalid without username" do
  		user.username = nil
  		expect(user).to be_invalid
  	end
  	it "will be invalid without username longer than three characters" do
  		@newuser = User.create(username: "te", password: "password")
  		expect(@newuser).to be_invalid
  	end
  	it "will be valid with a username longer than three characters" do
  		@newuser = User.create(username: "testuser2", password: "password")
  		expect(@newuser).to be_valid
  	end
  end

  describe "#new validation duplication" do
  	let(:user){User.new(valid_attributes)}
  	@duplicate = User.new(username: "testuser", password: "password")
  	it "will not create a record" do
  		expect(@duplicate).to be_nil
  	end
  end

  describe "#new link added" do
  	let(:user){User.new(valid_attributes)}
  	it "will return the profile email" do
  		expect(user.username).to eq("testuser")
  	end
  	it "will return the profile user_id" do
  		expect(user.password).to eq("password")
  	end
  end
end
