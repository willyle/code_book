require 'rails_helper'

RSpec.describe Language, type: :model do
  let (:valid_attributes){
  	@valid_attributes = {
  		name: "Ruby"
  	}
  }
  describe "is invalid without a " do
  	let(:language){Language.new(valid_attributes)}
  	it "name" do
  		language.name = nil
  		expect(language).to be_invalid
  	end
  end
  describe "duplicate to be invalid" do
  	let(:language){Language.new(valid_attributes)}
  	@duplicate = Language.new(name: "Ruby")
  	it "name" do
  		expect(@duplicate).to be_nil
  	end
  end
end
