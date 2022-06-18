class StudentsController < ApplicationController
  before_action :authenticate_user

  def index
    students = Student.where(user_id: current_user.id)
    render json: students.as_json 
  end

  def create
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_image_url = response["secure_url"]
    cloudinary_image_public_id = response["public_id"]

    student = Student.new(
      user_id: current_user.id,
      name: params[:name].downcase,
      email: params[:email].downcase,
      cloudinary_image_url: cloudinary_image_url,
      cloudinary_image_public_id: cloudinary_image_public_id
    )

    student.save
    render json: student.as_json
  end

  def show
    @student = Student.find_by(user_id: current_user.id, id: params[:id])
    # render json: student.as_json 
    render template: "students/show"
  end
end
