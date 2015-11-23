class Tag < ActiveRecord::Base
	validates :search_id,
				 presence: true

	validates :language_id,
				 presence: true

	belongs_to :search
	belongs_to :language
end
