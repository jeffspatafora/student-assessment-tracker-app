class AddDescriptionColumnToStudentWorkModel < ActiveRecord::Migration[7.0]
  def change
    add_column :student_works, :description, :text
  end
end
