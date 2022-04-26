class CreateUserNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_notes do |t|
      t.integer :user_id
      t.integer :student_id
      t.integer :project_id
      t.text :note

      t.timestamps
    end
  end
end
