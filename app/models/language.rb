class Language < ActiveRecord::Base
	validates :name,
				 uniqueness: true,
				 presence: true

	has_many :tags
	has_many :searches, through: :tags
end
