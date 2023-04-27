Rails.application.routes.draw do
  
  get "/reservations" => "reservations#index"

  get "/reviews" => "reviews#index"
end
