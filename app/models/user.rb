class User < ApplicationRecord
  has_many :questions
  has_many :questions
  has_secure_password
  validates :email, uniqueness: true
  validates :email, presence: true
end
