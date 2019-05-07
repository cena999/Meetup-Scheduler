Rails.application.routes.draw do
  resources :sessions

  root 'sessions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/create' => 'sessions#create', as: 'create_session'
  # get '/login'  => 'sessions#login',  as: 'login_session'

  # FRONT END TESTING TO BE COPIED OVE EVENTUALLY
  get '/create' => 'schedules#create', as: 'create_session'
  get '/login'  => 'schedules#login',  as: 'login_session'
  get '/available' => 'schedules#available'
  get '/index' => 'schedules#index'

end