class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :section
      t.integer :section_number

      t.timestamps
    end
  end
end
