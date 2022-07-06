class TriviaSessionTokenController < ApplicationController
  def index
    session_tokens = TriviaSessionToken.all
    render json: session_tokens.as_json
  end

  def create
    session_token_request = HTTP.get("https://opentdb.com/api_token.php?command=request")

    session_token_response = session_token_request.parse(:json)
    token = session_token_response["token"]

    session_token = TriviaSessionToken.new(token: token)
    session_token.save
    render json: session_token.as_json
  end

  def update
    new_session_token_request = HTTP.get("https://opentdb.com/api_token.php?command=request")
    new_session_token_request = new_session_token_request.parse(:json)
    new_token = new_session_token_request["token"]

    session_token_data = TriviaSessionToken.last
    session_token_data.token = new_token
    session_token_data.save

    render json: session_token_data.as_json
  end

end
