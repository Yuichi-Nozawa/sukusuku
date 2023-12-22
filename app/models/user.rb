class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, length: { minimum: 1, maximum: 10 } 
  validates :email, presence: true, uniqueness: true, length: { minimum: 2, maximum: 20 } 
  validates :password, presence: true, length: { minimum: 1, maximum: 20 } 
end
