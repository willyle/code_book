class User < ActiveRecord::Base
	has_one :profile, dependent: :destroy
	
	has_many :searches, dependent: :destroy
end
