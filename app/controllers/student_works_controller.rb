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
    # response = Cloudinary::Uploader.upload("/Users/jefferyspatafora/Desktop/IMG_2859.jpg")

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
    # render json: response.as_json
  end

  def destroy
    # student_work = StudentWork.find_by(id: params[:id])
    # student_work_image_url = student_work[:image]
    student_work_image_url = "xhzwjvwx59tq6osvh7cy"
    response = Cloudinary::Uploader.destroy(student_work_image_url)
    # student_work.destroy
    render json: response.as_json
    # render json: {message: "deleted"}
  end

end
