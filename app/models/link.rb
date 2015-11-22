class Link < ActiveRecord::Base
	has_many :resources
	has_many :searches, through: :resources
end
