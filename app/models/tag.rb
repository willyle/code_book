class Tag < ActiveRecord::Base
	belongs_to :search
	belongs_to :language
end
