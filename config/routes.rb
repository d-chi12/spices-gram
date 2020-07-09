Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :users
  resources :recipes do
    resource :favorites, only: [:create, :destroy]
  end
  get "/intro" => "intro#index"
end