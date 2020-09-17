Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :games do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings do
    get 'accept', to: 'bookings#accept'
    get 'decline', to: 'bookings#decline'
  end
end
