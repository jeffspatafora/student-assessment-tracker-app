class AddStudentNameAndProjectNameToUserNoteModel < ActiveRecord::Migration[7.0]
  def change
    add_column :user_notes, :student_name, :string
    add_column :user_notes, :project_name, :string
  end
end
