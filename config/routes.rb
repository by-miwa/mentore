Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :calendars
  resources :operations
  #post '/application/guest_sign_in', to: 'application#new_guest'
  get 'prototypes/search'
  get 'prototypes/search'
  resources :books 
  resources :users
  resources :prototypes do
    resources :comments, only: :create 
  end
end