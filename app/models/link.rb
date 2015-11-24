class Link < ActiveRecord::Base
	validates :url,
				 uniqueness: true,
				 presence: true
				 
	has_many :resources
	has_many :searches, through: :resources
end
