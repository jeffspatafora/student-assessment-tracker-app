class User < ApplicationRecord
  has_many :user_notes
  has_many :students

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
