class Resource < ActiveRecord::Base
	belongs_to :search
	belongs_to :link
end
