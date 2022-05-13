Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/user_notes" => "user_notes#index"
  post "/user_notes" => "user_notes#create"
  get "/user_notes/:id" => "user_notes#show"

  get "/students" => "students#index"
  post "/students" => "students#create"

  get "/projects" => "projects#index"
  post "/projects" => "projects#create"

  get "/questions" => "questions#index"
  
end
