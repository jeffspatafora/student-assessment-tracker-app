class RemoveStudentNameAndProjectNameFromUserNotesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_notes, :student_name, :string
    remove_column :user_notes, :project_name, :string
  end
end
