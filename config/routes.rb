Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # devise_scope :user do
  #   get '/check_active' to: 'sessions#check_active'
  # end
  # Ticke pour 18/10/2020
  resources :confinements do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:index, :destroy]
end