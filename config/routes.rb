Rails.application.routes.draw do
  resources :movies
  resources :actors
  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
end
