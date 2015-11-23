Rails.application.routes.draw do

  root 'home#index'
  
  get "/sign_up" => "users#new"
  post "/sign_up" => "users#create"
  get "/sign_in" => "sessions#new"
  post "/sign_in" => "sessions#create"
  get "/sign_out" => "sessions#destroy"

  resources :users

  
end
