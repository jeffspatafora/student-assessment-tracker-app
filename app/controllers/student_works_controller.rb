class StudentWorksController < ApplicationController
  before_action :authenticate_user

  def index
    student_works = StudentWork.where(user_id: current_user.id, student_id: params[:student_id], project_id: params[:project_id])

    render json: student_works.as_json 
  end

  def create
    # binding.pry
    response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
    cloudinary_url = response["secure_url"]

    student = Student.find_by(name: params[:student_name].downcase)
    project = Project.find_by(title: params[:project_title].downcase)

    student_work = StudentWork.create!(
      user_id: current_user.id,
      student_id: student.id,
      project_id: project.id,
      description: params[:description],
      image: cloudinary_url
    )

    # student_work.save
    render json: student_work
  end

  def destroy
    render json: {message: "in student work destroy"}
  end
end
