Rails.application.routes.draw do
	root 'pages#home'
	get 'pages/home', to: 'pages#home'

	# get '/recipes', to: 'recipes#index'
	# get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
	# get '/recipes/:id', to: 'recipes#show', as: 'recipe'
	# # as:　を入れることによってrails routesコマンドで検索したときに表示される名前が変更することが出来るようになる
	# post '/recipes', to: 'recipes#create'



	 resources :recipes
	# rails routes | grep recipesれしぷアクションのみを参照

end
