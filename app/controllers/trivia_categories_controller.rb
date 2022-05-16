class TriviaCategoriesController < ApplicationController
  def index
    trivia_categories_response = HTTP.get("https://opentdb.com/api_category.php")

    trivia_categories_data = trivia_categories_response.parse(:json)

    render json: trivia_categories_data
  end
end
