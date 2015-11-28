require 'rails_helper'

RSpec.describe Link, type: :model do
  let (:valid_attributes){
  	@valid_attributes = {
  		url: "www.github.com"
  	}
  }
  describe "#new validation presence" do
  	let(:link){Link.new(valid_attributes)}
  	it "will be invalid without name" do
  		link.url = nil
  		expect(link).to be_invalid
  	end
  end

  describe "#new validation duplication" do
  	let(:link){Link.new(valid_attributes)}
  	@duplicate = Link.new(url: "www.github.com")
  	it "will not create a record" do
  		expect(@duplicate).to be_nil
  	end
  end

  describe "#new link added" do
  	let(:link){Link.new(valid_attributes)}
  	it "will return the link name" do
  		expect(link.url).to eq("www.github.com")
  	end
  end
end
