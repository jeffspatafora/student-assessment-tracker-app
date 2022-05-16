class QuestionsController < ApplicationController
  def get_question 

    session_token = TriviaSessionToken.find_by(id: 2)
    category = 19
    difficulty = "medium"


    # response = HTTP.get("https://opentdb.com/api.php?amount=1&category=#{category}&difficulty=#{difficulty}&token=#{session_token}")
    # questions_data = response.parse(:json)
    # type = questions_data["results"][0]["type"]
    # question = questions_data["results"][0]["question"]
    # correct_answer = questions_data["results"][0]["correct_answer"]
    # incorrect_answers = questions_data["results"][0]["incorrect_answers"]
    
    # render json: {question: question, type: type, correct_answer: correct_answer, incorrect_answers: incorrect_answers}

    render json: {message: session_token}

  end
end
