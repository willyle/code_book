class Profile < ActiveRecord::Base
	validates :email,
	  presence: true,
	  uniqueness: true

	validates :user_id,
	  presence: true,
	  uniqueness: true
	 
	belongs_to :user
end
