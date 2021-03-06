class User < ActiveRecord::Base
	attr_accessor :password

	before_create :encrypt_password

	validates :username,
				 uniqueness: true,
				 presence: true,
				 length: {minimum: 3}

	validates :password,
				 confirmation: true

	has_one :profile, dependent: :destroy
	
	has_many :searches, dependent: :destroy

	def encrypt_password
		self.password_salt = BCrypt::Engine.generate_salt
		self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
	end

	def self.authenticate(login, password)
		for i in 0...login.length
			if login[i] == "@"
				user = Profile.find_by(email: login).user
			end
		end

		if !user
			user = User.find_by(username: login)
		end

		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			return user
		else
			return nil
		end
	end
end