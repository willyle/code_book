class Search < ActiveRecord::Base
	belongs_to :user

	has_many :resources
	has_many :links, through: :resources

	has_many :tags
	has_many :lanuages, through: :tags

end
