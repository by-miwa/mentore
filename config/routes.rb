Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  get 'prototypes/search'
  resources :books 
  resources :users
  resources :prototypes do
    resources :comments, only: :create 
  end
end