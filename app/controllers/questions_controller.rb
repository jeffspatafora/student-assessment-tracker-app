class QuestionsController < ApplicationController
  def index
    render json: {message: "in questions"}
  end
end
