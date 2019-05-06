Rails.application.routes.draw do
  resources :meetups
  resources :sessions

  root 'meetups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/create' => 'sessions#create', as: 'create_session'
  get '/login'  => 'sessions#login',  as: 'login_session'

end