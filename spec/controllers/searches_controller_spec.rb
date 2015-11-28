require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
	let (:valid_attributes){
    @valid_attributes = {
      title: "Ruby Help",
      user_id: 1
    }
  }

  describe "GET #create" do
    let(:search){Search.new(valid_attributes)}
    it "creates new search" do
      expect(search.title).to eq("Ruby Help")
    end
  end

  describe "GET #destroy" do
    let(:search){Search.create(valid_attributes)}
    it "returns a user" do
      expect(search.title).to eq("Ruby Help")
    end
    it "returns no user" do
      search.destroy
      expect(Search.count).to eq(0)
    end
  end
end
