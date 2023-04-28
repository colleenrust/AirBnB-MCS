class User < ApplicationRecord
  has_many :reservations
  has_many :reviews, through: :reservations
  
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
