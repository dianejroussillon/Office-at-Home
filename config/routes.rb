Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'
  resources :flats do
    resources :bookings do
    resources :reviews, only: [:new, :create, :destroy, :index]
    end
  end
end
