Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "photos#index"

  

  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  
  #get "/users/:id" => "users#show", as :user
  #resources :users, only: :show
  get "/:username" => "users#show", as: :user
  
end
