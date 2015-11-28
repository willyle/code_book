require 'rails_helper'

RSpec.describe Language, type: :model do
  let (:valid_attributes){
  	@valid_attributes = {
  		name: "Ruby"
  	}
  }

  describe "#new validation presence" do
  	let(:language){Language.new(valid_attributes)}
  	it "will be invalid without name" do
  		language.name = nil
  		expect(language).to be_invalid
  	end
  end

  describe "#new validation duplication" do
  	let(:language){Language.new(valid_attributes)}
  	@duplicate = Language.new(name: "Ruby")
  	it "will not create a record" do
  		expect(@duplicate).to be_nil
  	end
  end

  describe "#new language added language" do
  	let(:language){Language.new(valid_attributes)}
  	it "will return the language name" do
  		expect(language.name).to eq("Ruby")
  	end
  end
end
