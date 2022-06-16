class Student < ApplicationRecord
  has_many :user_notes
  has_many :student_works
  belongs_to :user
end
