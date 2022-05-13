class QuestionsController < ApplicationController
  def index
    response = HTTP.get("https://opentdb.com/api.php?amount=1&category=19&difficulty=hard")
    questions = response.parse(:json)
    render json: {message: questions["results"][0]["question"]}
  end
end
