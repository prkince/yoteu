Rails.application.routes.draw do
  	devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }
	devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }
  	resources :categories, only: [:index, :show]
  	root 'ships#index'
	get '/about', to: 'ships#about', as: :about
	resources :ships
	resources :pages, only: [:index]
	resources :orders, only: [:show, :create] do
	  resources :payments, only: :new
	end	
	mount StripeEvent::Engine, at: 'https://3a32dcc5.ngrok.io/stripe-webhooks'

end
