Rails.application.routes.draw do
	#get "/", to 'user#new'
	root 'users#new'
	get '/contact', to: 'static#contact'
	get '/team', to: 'static#team'
	resources :gossips
	resources :sessions, only: [:new, :create, :destroy]
	resources :users, only: [:new, :create, :destroy]
end
