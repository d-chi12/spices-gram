Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  devise_for :recipes
  resources :users
  resources :recipes do
    resource :favorites, only: [:create, :destroy]
  end
  resources :posts, only: [:new,:create,:show]
  resources :comments, only: [:create, :destroy]
  get "/resipes" => "resipes#show"
  get "/intro" => "intro#index"

end