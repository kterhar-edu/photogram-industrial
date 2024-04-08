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
  get ":username/liked" => "users#liked", as: :liked
  get ":username/feed" => "users#feed", as: :feed
  get ":username/followers" => "users#followers", as: :followers
  get ":username/leaders" => "users#leaders", as: :leaders

  get ":username" => "users#show", as: :user
end
