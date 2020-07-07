Rails.application.routes.draw do
  get 'intro/index'
  get 'intro/show'
  devise_for :users
  root to: "home#index"
  resources :users
  resources :recipes
  resources :intro
  
end
