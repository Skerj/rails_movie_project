Rails.application.routes.draw do
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	post '/logout' => 'sessions#destroy'
	get '/movies/:movie_id/actors/new' => 'actors#new'
	get '/auth/:provider/callback' => 'sessions#create'
	get '/actors/oldest_actors' => 'actors#oldest_actors'
	get '/actors/youngest_actors' => 'actors#youngest_actors'

  resources :movies do
  	resources :comments
  end
  resources :actors do
  	resources :comments
  end
  resources :users, only: [:new, :create]

  root 'welcome#home'
end