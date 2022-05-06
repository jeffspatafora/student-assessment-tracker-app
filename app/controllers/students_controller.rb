class StudentsController < ApplicationController
  
  def index
    students = Student.all
    render json: students.as_json 
  end

  def create
    student = Student.new(
      name: params[:name].downcase,
      email: params[:email]
    )

    student.save
    render json: student.as_json
  end
end
