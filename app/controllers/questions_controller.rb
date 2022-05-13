class QuestionsController < ApplicationController
  def index 

    session_token_request = HTTP.get("https://opentdb.com/api_token.php?command=request")
    session_token_response = session_token_request.parse(:json)
    session_token = session_token_response["token"]

    response = HTTP.get("https://opentdb.com/api.php?amount=1&token=#{session_token}")
    questions = response.parse(:json)
    render json: {message: questions["results"][0]["question"]}

  end
end
