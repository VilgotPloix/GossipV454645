Rails.application.routes.draw do
  
	get '/', to: "static_pages#home"


	get '/gossips/:id', to: "static_pages#eachGossips"

	get '/team', to: "static_pages#team"

	get '/contact', to: "static_pages#contact"

end
