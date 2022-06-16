class StudentWorksController < ApplicationController
  before_action :authenticate_user
  
  def create
    # binding.pry
    response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
    cloudinary_url = response["secure_url"]
    student_work = StudentWork.create!(
      user_id: current_user.id,
      student_id: params[:student_id],
      project_id: params[:project_id],
      image: cloudinary_url
    )

    # student_work.save
    render json: student_work
  end
end
