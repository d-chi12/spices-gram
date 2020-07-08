Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users
  resources :recipes
  # resource :intro
  
  get "/intro" => "intro#index"
  # get 'intro/show'
  
end
