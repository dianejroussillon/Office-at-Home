Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :flats do
    resources :bookings
    resources :reviews, only: [:new, :create, :delete, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
