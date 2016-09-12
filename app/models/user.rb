class User < ApplicationRecord
	attr_accessor :remember_token
	before_save { email.downcase! }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
										format: { with: VALID_EMAIL_REGEX},
										uniqueness: { case_sensitive: false }
# Enforcing db index to avoid full db record scans thus sluggishness whilst browsing
# due to computational cycles. Tried various ways to solve this via my 
# vpn home server but my Italian provider obfuscates my ports. Arrgghhhhhh! 
# So just decided to generate a migration & code in an index in the record table.
	has_secure_password
	validates :password, length: { minimum: 6 }

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : 
																									BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
		
	end

	# Returns a random token.
	def User.new_token
		SecureRandom.urlsafe_base64
	end
	# Recall user in the db for use in persistent sessions.
	def remember
		self.remember_token = User.new_token 
		update_attribute(:remember_digest, User.digest(remember_token))
	end

	# Returns true if the given token matches the digest.
	def authenticated?(remember_token)
		BCrypt::Password.new(remember_digest).is_password?(remember_token)
	end
end
