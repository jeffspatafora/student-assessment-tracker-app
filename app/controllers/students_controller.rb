class StudentsController < ApplicationController
  before_action :authenticate_user

  def index
    students = Student.all
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
end
