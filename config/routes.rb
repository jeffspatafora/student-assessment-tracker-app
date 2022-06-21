Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/user_notes" => "user_notes#index"
  post "/user_notes" => "user_notes#create"
  get "/user_notes/:id" => "user_notes#show"
  patch "/user_notes/:id" => "user_notes#update"

  get "/student_works" => "student_works#index"
  post "/student_works" => "student_works#create"
  delete "/student_works/:id" => "student_works#destroy"

  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/:id" => "students#show"

  get "/projects" => "projects#index"
  post "/projects" => "projects#create"

  get "/questions" => "questions#get_question"

  get "/trivia_categories" => "trivia_categories#index"

  get "/trivia_session_token" => "trivia_session_token#index"
  post "/trivia_session_token" => "trivia_session_token#create"
  patch "/trivia_session_token" => "trivia_session_token#update"
  
end
