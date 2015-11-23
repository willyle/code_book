Rails.application.routes.draw do
  
  root 'home#index'
  post 'customsearch' => 'searches#custom'
  get "/sign_up" => "users#new"
  post "/sign_up" => "users#create"
  get "/sign_in" => "sessions#new"
  post "/sign_in" => "sessions#create"
  get "/sign_out" => "sessions#destroy"
  resource :searches
  resources :users
  
end
