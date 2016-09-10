class User < ApplicationRecord
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
										format: { with: VALID_EMAIL_REGEX},
										uniqueness: { case_sensitive: false }
# Enforcing db index to avoid full db record scans thus sluggishness whilst browsing
# due to computational cycles. Tried various ways to solve this via my 
# vpn home server but my Italian provider obfuscates my ports. Arrgghhhhhh! 
# So just decided to generate a migration.

end
