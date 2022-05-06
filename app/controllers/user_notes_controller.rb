class UserNotesController < ApplicationController
  before_action :authenticate_user

  def index
    @user_notes = UserNote.where(user_id: current_user.id)
    # @user_notes = UserNote.all
    # render json: user_notes.as_json
    render template: "user_notes/index"
  end

  def create
    student = Student.find_by(name: params[:student_name].downcase)
    # render json: student.as_json
    project = Project.find_by(title: params[:project_title].downcase)
    # render json: project.as_json

    user_note = UserNote.new(
      user_id: current_user.id,
      student_id: student.id,
      project_id: project.id,
      note: params[:note]
    )

    # user_note = UserNote.new(
    #   user_id: current_user.id,
    #   student_id: params[:student_id],
    #   project_id: params[:project_id],
    #   note: params[:note],
    # )

    user_note.save!
    render json: user_note.as_json
  end

  def show
    @user_note = UserNote.find_by(id: params[:id])
    # render json: user_note.as_json
    if @user_note.user_id == current_user.id
      render template: "user_notes/show"
    else
      render json: {message: "note doesn't belong to you"}
    end
  end

end