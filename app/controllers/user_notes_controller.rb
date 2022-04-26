class UserNotesController < ApplicationController

  def index
    user_notes = UserNote.all
    render json: user_notes.as_json
  end

end
