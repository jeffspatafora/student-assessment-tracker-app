class StudentWorksController < ApplicationController
  def create
    # binding.pry
    response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
    cloudinary_url = response["secure_url"]
    student_work = StudentWork.create!(
      image: cloudinary_url
    )

    # student_work.save
    render json: student_work
  end
end
