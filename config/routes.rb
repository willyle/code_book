Rails.application.routes.draw do
  
  get 'resources/save'

  root 'home#index'
  get "/dashboard" => "home#dashboard"
  post 'customsearch' => 'searches#custom'

  get "/sign_up" => "users#new"
  post "/sign_up" => "users#create"
  get "/sign_in" => "sessions#new"
  post "/sign_in" => "sessions#create"
  get "/sign_out" => "sessions#destroy"
  put "/note_update" => "searches#updatenote"
  resource :searches
  resources :users
  resources :resources
  resources :profile

  delete "/card_delete" => "searches#destroy"
  delete "/answer_delete" => "resources#destroy"


  
  post '/search_link' => 'searches#link'
  post '/save' => 'resources#save'
  post '/filter' => 'searches#filter'
end
