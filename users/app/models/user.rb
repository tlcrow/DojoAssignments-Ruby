class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: { minimum: 2 }
    validates :email_address, presence: true
    validates :age, presence: true, numericality: { greater_than: 5, less_than: 150, only_integer: true }
end
