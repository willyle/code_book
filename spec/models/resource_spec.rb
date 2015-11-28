require 'rails_helper'

RSpec.describe Resource, type: :model do
     let (:valid_attributes){
  	@valid_attributes = {
  		search_id: 1,
  		link_id: 1
  	}
  }
  describe "#new validation presence" do
  	let(:resource){Resource.new(valid_attributes)}
  	it "will be invalid without search_id" do
  		resource.search_id = nil
  		expect(resource).to be_invalid
  	end
  	it "will be invalid without link_id" do
  		resource.link_id = nil
  		expect(resource).to be_invalid
  	end
  end

  describe "#new resource added" do
  	let(:resource){Resource.new(valid_attributes)}
  	it "will return the search_id" do
  		expect(resource.search_id).to eq(1)
  	end
  	it "will return the link_id" do
  		expect(resource.link_id).to eq(1)
  	end
  end
end
