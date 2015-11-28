require 'rails_helper'

RSpec.describe Profile, type: :model do
    let (:valid_attributes){
  	@valid_attributes = {
  		email: "test@g.com",
  		user_id: 1
  	}
  }
  describe "#new validation presence" do
  	let(:profile){Profile.new(valid_attributes)}
  	it "will be invalid without email" do
  		profile.email = nil
  		expect(profile).to be_invalid
  	end
  	it "will be invalid without name" do
  		profile.user_id = nil
  		expect(profile).to be_invalid
  	end
  end

  describe "#new validation duplication" do
  	let(:profile){Profile.new(valid_attributes)}
  	@duplicate = Profile.new(email: "test@g.com", user_id: 1)
  	it "will not create a record" do
  		expect(@duplicate).to be_nil
  	end
  end

  describe "#new link added" do
  	let(:profile){Profile.new(valid_attributes)}
  	it "will return the profile email" do
  		expect(profile.email).to eq("test@g.com")
  	end
  	it "will return the profile user_id" do
  		expect(profile.user_id).to eq(1)
  	end
  end
end
