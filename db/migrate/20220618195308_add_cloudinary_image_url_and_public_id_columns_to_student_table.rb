class AddCloudinaryImageUrlAndPublicIdColumnsToStudentTable < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :cloudinary_image_url, :string
    add_column :students, :cloudinary_image_public_id, :string
  end
end
