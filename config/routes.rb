Rails.application.routes.draw do
  	devise_for :users
  	root 'ships#index'
	resources :ships
	resources :pages, only: [:index]
	resources :orders, only: [:show, :create] do
	  resources :payments, only: :new
	end	
	mount StripeEvent::Engine, at: '/stripe-webhooks'

end
