class User < ApplicationRecord
	has_many :posts
	has_many :comments
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :DOB, presence: true
	validates :gender, presence: true
	validates :country, presence: true
	validates :password_digest, presence: true
	validates :password_digest, uniqueness: true
	has_secure_password
	
end
