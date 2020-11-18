Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # devise_scope :user do
  #   get '/check_active' to: 'sessions#check_active'
  # end
  # Ticke pour 18/10/2020




  resources :confinements do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :destroy]
  get 'my_confinements', to: 'confinements#user_index', as: 'my_confinements'
end


#we want to grab all the info from confinement to create a new booking