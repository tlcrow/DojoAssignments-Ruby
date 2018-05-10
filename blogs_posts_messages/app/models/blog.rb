class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    validates :name, :description, presence: true
    has_many :owners, dependent: :destroy
    has_many :users, through: :owners
end
