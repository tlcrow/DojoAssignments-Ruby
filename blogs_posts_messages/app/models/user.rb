class User < ActiveRecord::Base
  has_many :owners, dependent: :destroy
  has_many :blogs, through: :owners
  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
end
