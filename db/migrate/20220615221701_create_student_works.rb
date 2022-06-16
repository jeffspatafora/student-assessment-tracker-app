class CreateStudentWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :student_works do |t|
      t.string :image

      t.timestamps
    end
  end
end
