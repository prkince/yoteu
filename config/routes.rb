Rails.application.routes.draw do
  	resources :categories, only: [:index, :show]
  	devise_for :users
  	root 'ships#index'
	get '/about', to: 'ships#about', as: :about
	resources :ships
	resources :pages, only: [:index]
	resources :orders, only: [:show, :create] do
	  resources :payments, only: :new
	end	
	mount StripeEvent::Engine, at: 'https://3a32dcc5.ngrok.io/stripe-webhooks'

end
