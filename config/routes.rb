Rails.application.routes.draw do

  #Reservations routes
  
  resources :reservations

  #Rooms routes
  
  resources :rooms
  get "/rooms/:room_id/reservations/new" => "reservations#new"


  # Room Images
  resources :room_images, only: [:create, :destroy]
  
  # Review routes

  resources :reviews

  # Sign Up Routes (users)

  resources :users
  
  # Login Routes (sessions)

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
