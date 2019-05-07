Rails.application.routes.draw do
  resources :meetups
  resources :sessions

  root 'meetups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/create' => 'tests#create', as: 'create_session'
  get '/login'  => 'tests#login',  as: 'login_session'
  get '/available' => 'tests#available'
  get '/index' => 'tests#index'
end