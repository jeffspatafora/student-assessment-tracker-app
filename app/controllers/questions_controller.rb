class QuestionsController < ApplicationController
  def get_question 

    session_token_request = HTTP.get("https://opentdb.com/api_token.php?command=request")
    session_token_response = session_token_request.parse(:json)
    session_token = session_token_response["token"]

    category = 19
    difficulty = "medium"


    response = HTTP.get("https://opentdb.com/api.php?amount=1&category=#{category}&difficulty=#{difficulty}&token=#{session_token}")
    questions_data = response.parse(:json)
    type = questions_data["results"][0]["type"]
    question = questions_data["results"][0]["question"]
    correct_answer = questions_data["results"][0]["correct_answer"]
    incorrect_answers = questions_data["results"][0]["incorrect_answers"]
    
    render json: {question: question, type: type, correct_answer: correct_answer, incorrect_answers: incorrect_answers}

  end
end
