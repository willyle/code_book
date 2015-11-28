require 'rails_helper'

RSpec.describe Tag, type: :model do
  let (:valid_attributes){
  	@valid_attributes = {
  		search_id: 1,
  		language_id: 1
  	}
  }
  describe "#new validation presence" do
  	let(:tag){Tag.new(valid_attributes)}
  	it "will be invalid without search_id" do
  		tag.search_id = nil
  		expect(tag).to be_invalid
  	end
  	it "will be invalid without language_id" do
  		tag.language_id = nil
  		expect(tag).to be_invalid
  	end
  end

  describe "#new tag added" do
  	let(:tag){Tag.new(valid_attributes)}
  	it "will return the search_id" do
  		expect(tag.search_id).to eq(1)
  	end
  	it "will return the language_id" do
  		expect(tag.language_id).to eq(1)
  	end
  end
end
