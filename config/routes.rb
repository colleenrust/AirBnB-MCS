Rails.application.routes.draw do
  # Reservation Routes
  
  get "/reservations" => "reservations#index"

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
