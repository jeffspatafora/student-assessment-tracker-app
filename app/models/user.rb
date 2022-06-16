class User < ApplicationRecord
  has_many :user_notes
  has_many :students
  has_many :projects
  has_many :student_works

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
