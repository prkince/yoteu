Rails.application.routes.draw do
  	devise_for :users
  	root 'ships#index'
	resources :ships, only: [:index, :show]
	resources :pages, only: [:index]
end
