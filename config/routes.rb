Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :gears do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings
  get "dashboard", to: "dashboard#show", as: "dashboard"
  get "gears/:category", to: "gears#index", as: "filter"
end
