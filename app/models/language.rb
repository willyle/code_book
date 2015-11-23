class Language < ActiveRecord::Base
	validates :name,
				 uniquness: true,
				 presence: true

	has_many :tags
	has_many :searches, through: :tags
end
