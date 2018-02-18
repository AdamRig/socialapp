class Post < ApplicationRecord
	has_many :comments, :dependent => :destroy
	belongs_to :category
	belongs_to :user
	validates :content, presence: true
end
