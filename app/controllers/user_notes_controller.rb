class UserNotesController < ApplicationController

  def index
    user_notes = UserNote.all
    render json: user_notes.as_json
  end

  def create
    user_note = UserNote.new(
      user_id: params[:user_id],
      student_id: params[:student_id],
      project_id: params[:project_id],
      note: params[:note]
    )

    user_note.save
    render json: user_note.as_json
  end

end
