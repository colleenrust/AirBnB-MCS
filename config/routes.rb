Rails.application.routes.draw do
  # Reservation Routes
  
  get "/reservations" => "reservations#index"

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/rooms" => "rooms#index"
  # get "/rooms/new" => "rooms#new"
  # get "/rooms/:id" => "rooms#show"
  resources :rooms
  

  # Review routes

  get "/reviews" => "reviews#index"

  # Sign Up Routes (users)

  get "/signup" => "users#new"
  post "/users" => "users#create"

  # Login Routes (sessions)

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
