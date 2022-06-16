class StudentWork < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :project
end
