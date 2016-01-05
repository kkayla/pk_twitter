class User < ActiveRecord::Base
	validates :name; presence: true
	validates :email, presence: true
	has_many :posts
	has_secure_password
end

class Post < ActiveRecord::Base
	belongs_to :user
end
