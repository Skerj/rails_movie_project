Rails.application.routes.draw do
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	post '/logout' => 'sessions#destroy'
	get '/movies/:movie_id/actors/new' => 'actors#new'

  resources :movies
  resources :actors
  resources :users, only: [:new, :create]

  root 'welcome#home'
end
