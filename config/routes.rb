Rails.application.routes.draw do
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	post '/logout' => 'sessions#destroy'
	get '/movies/:movie_id/actors/new' => 'actors#new'
	get '/auth/github/callback' => 'sessions#create'

  resources :movies do
  	resources :comments
  end
  resources :actors do
  	resources :comments
  end
  resources :users, only: [:new, :create]

  root 'welcome#home'
end