class UserNotesController < ApplicationController

  def index
    user_notes = UserNote.all
    render json: user_notes.as_json
  end

  def create
    render json: {message: "in create"}
  end

end
