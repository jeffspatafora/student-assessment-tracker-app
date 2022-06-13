class StudentsController < ApplicationController
  # before_action :authenticate_user

  def index
    students = Student.where(user_id: current_user.id)
    render json: students.as_json 
  end

  def create
    student = Student.new(
      user_id: current_user.id,
      name: params[:name].downcase,
      email: params[:email]
    )

    student.save
    render json: student.as_json
  end

  def show
    render json: {message: "in students show"}
  end
end
