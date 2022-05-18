class QuestionsController < ApplicationController
  def get_question 

    session_token_data = TriviaSessionToken.find_by(id: 2)
    session_token = session_token_data[:token]

    category = params[:category_id]
    if category == "1"
      category = ""
    end
    difficulty = params[:difficulty]

    coder = HTMLEntities.new

    response = HTTP.get("https://opentdb.com/api.php?amount=1&category=#{category}&difficulty=#{difficulty}&token=#{session_token}")
    questions_data = response.parse(:json)

    type = questions_data["results"][0]["type"]

    question = questions_data["results"][0]["question"]
    question = coder.decode(question)

    correct_answer = questions_data["results"][0]["correct_answer"]
    correct_answer = coder.decode(correct_answer)

    incorrect_answers = questions_data["results"][0]["incorrect_answers"]
    decoded_incorrect_answers = []
    incorrect_answers.each do |incorrect_answer|
      decoded_incorrect_answers << coder.decode(incorrect_answer)
    end 

    all_answers = []
    all_answers << correct_answer

    decoded_incorrect_answers.each do |decoded_incorrect_answer|
      all_answers << decoded_incorrect_answer
    end

    possible_answers = all_answers.shuffle

    render json: {question: question, type: type, possible_answers: possible_answers, correct_answer: correct_answer, decoded_incorrect_answers: decoded_incorrect_answers}

  end


end
