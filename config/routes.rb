Rails.application.routes.draw do
  # Reservation Routes
  
  resources :reservations

  # Defines the root path route ("/")
  # root "articles#index"
 
  resources :rooms
  # get "/rooms" => "rooms#index"
  # get "/rooms/new" => "rooms#new"
  # get "/rooms/:id" => "rooms#show"

  # Room Images
  resources :room_images, only: [:create, :destroy]
  
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
