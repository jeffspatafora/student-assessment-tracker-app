class UserNotesController < ApplicationController
  before_action :authenticate_user

  def index
    user_notes = UserNote.all
    render json: user_notes.as_json
  end

  def create
    student = Student.find_by(name: params[:student_name])
    # render json: student.as_json
    project = Project.find_by(title: params[:project_title])
    # render json: project.as_json

    user_note = UserNote.new(
      user_id: current_user.id,
      student_id: student.id,
      student_name: student.name,
      project_id: project.id,
      project_name: project.title,
      note: params[:note]
    )

    user_note.save
    render json: user_note.as_json
  end

end
