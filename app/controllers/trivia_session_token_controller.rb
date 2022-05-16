class TriviaSessionTokenController < ApplicationController
  def get_token

    session_token_request = HTTP.get("https://opentdb.com/api_token.php?command=request")
    session_token_response = session_token_request.parse(:json)
    session_token = session_token_response["token"]

    render json: {session_token: session_token}
    
  end

  def create_token

    session_token_request = HTTP.get("https://opentdb.com/api_token.php?command=request")

    session_token_response = session_token_request.parse(:json)
    token = session_token_response["token"]

    session_token = TriviaSessionToken.new(token: token)
    session_token.save
    render json: session_token.as_json

  end

end
