class User < ActiveRecord::Base
	validates :username,
				 uniqueness: true,
				 presence: true,
				 length: {minimum: 3}

	validates :password,
				 presence: true,
				 confirmation: true,
				 length: {mininum: 6}

	validates :password_salt,
				 presence: true

	has_one :profile, dependent: :destroy
	
	has_many :searches, dependent: :destroy
end
