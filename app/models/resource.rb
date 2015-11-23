class Resource < ActiveRecord::Base
	validates :search_id,
				 presence: true

	validates :link_id,
				 presence: true

	belongs_to :search
	belongs_to :link
end
