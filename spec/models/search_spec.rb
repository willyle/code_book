require 'rails_helper'

RSpec.describe Search, type: :model do
  let (:valid_attributes){
  	@valid_attributes = {
  		title: "Ruby Help",
  		user_id: 1
  	}
  }

  describe "#new validation presence" do
  	let(:search){Search.new(valid_attributes)}
  	it "will be invalid without name" do
  		search.title = nil
  		expect(search).to be_invalid
  	end
  	it "will be invalid without a name" do
  		search.user_id = nil
  		expect(search).to be_invalid
  	end
  end

  describe "#new validation duplication" do
  	let(:search){Search.new(valid_attributes)}
  	@duplicate = Search.new(title: "Ruby Help")
  	it "will not create a record" do
  		expect(@duplicate).to be_nil
  	end
  end

  describe "#new Search added title" do
  	let(:search){Search.new(valid_attributes)}
  	it "will return the search title" do
  		expect(search.title).to eq("Ruby Help")
  	end
  end
end
