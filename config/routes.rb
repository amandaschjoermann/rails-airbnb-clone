Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :gears do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings
end
