class AddUserIdColumnToStudentModel < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :user_id, :integer
  end
end