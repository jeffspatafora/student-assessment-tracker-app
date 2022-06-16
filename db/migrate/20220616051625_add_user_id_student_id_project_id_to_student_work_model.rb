class AddUserIdStudentIdProjectIdToStudentWorkModel < ActiveRecord::Migration[7.0]
  def change
    add_column :student_works, :user_id, :integer
    add_column :student_works, :student_id, :integer
    add_column :student_works, :project_id, :integer
  end
end
