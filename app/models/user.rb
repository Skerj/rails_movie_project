class User < ApplicationRecord
	has_many :comments
	validates :username, presence: true
	validates :email, presence: true, uniqueness: true
	has_secure_password

	def self.find_or_create_by_omniauth(auth_hash)
		self.where(id: auth_hash["uid"]).first_or_create do |user|
			user.username = auth_hash["info"]["nickname"]
			user.email = auth_hash["info"]["email"]
			user.password = SecureRandom.hex
		end
	end
end
