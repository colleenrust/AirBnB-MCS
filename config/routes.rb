Rails.application.routes.draw do
  # Reservation Routes
  
  resources :reservations

  # Defines the root path route ("/")
  # root "articles#index"
  get "/rooms" => "rooms#index"
  get "/rooms/:id" => "rooms#show"

  # Review routes

  resources :reviews

  # Sign Up Routes (users)

  get "/signup" => "users#new"
  post "/users" => "users#create"

  # Login Routes (sessions)

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
