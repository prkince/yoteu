Rails.application.routes.draw do
  	devise_for :users
  	root 'ships#index'
	resources :ships
	resources :pages, only: [:index]
end
