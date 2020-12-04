Rails.application.routes.draw do
  get 'book/index'
  devise_for :users
  root to: "prototypes#index"
  resources :users
  resources :prototypes do
    resources :comments, only: :create
  resources :books  
  end
end