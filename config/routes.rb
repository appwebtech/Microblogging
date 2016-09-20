Rails.application.routes.draw do

  get 'sessions/new'

  root 		'static_pages#home'
  get   	'static_pages/help'
  get   	'static_pages/about'
  get  		'static_pages/contact'
  get 		'users/new'
  get 		'sessions/new'
  post 		'sessions/create'
  delete 	'sessions/destroy'
  resources :users
  resources :account_activations, only: [:edit]
end
