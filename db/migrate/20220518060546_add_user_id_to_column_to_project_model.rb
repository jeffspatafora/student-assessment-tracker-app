class AddUserIdToColumnToProjectModel < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :user_id, :integer
  end
end
