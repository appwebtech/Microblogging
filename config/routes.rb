Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 		'static_pages#home'
  get   	'static_pages/help'
  get   	'static_pages/about'
  get  		'static_pages/contact'
  get 		'users/new'
  get 		'sessions/new'
  post 		'sessions/create'
  delete 	'sessions/destroy'
  resources :users do 
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
end
