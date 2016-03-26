Rails.application.routes.draw do

	resources :movies

	#  root to: "pages#home"
	root to: 'movies#index'
	get 'hakkinda', to: 'pages#about', as: :about
	get 'iletisim', to: 'pages#contact', as: :contact

	#get 'movies', to: "movies", as: :movie
	#get 'movies/show', to: 'movies#show', as: :show
	#get 'movies/new', to: 'movies#new', as: :new
	#get 'movies/edit', to: 'movies#edit', as: :edit
	#get 'movies/destroy', to: 'movies#destroy', as: :destroy

end

