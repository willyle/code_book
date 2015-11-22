class Language < ActiveRecord::Base
	has_many :tags
	has_many :searches, through: :tags
end
