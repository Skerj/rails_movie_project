Rails.application.routes.draw do
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	post '/logout' => 'sessions#destroy'
	get '/movies/:movie_id/actors/new' => 'actors#new'
	get '/auth/:provider/callback' => 'sessions#create'

  resources :movies
  resources :actors
  resources :users, only: [:new, :create]

  root 'welcome#home'
end