Rails.application.routes.draw do
  resources :meetups
  resources :sessions

  root 'meetups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :tests
  get '/create' => 'tests#create', as: 'create_session'
  get '/login'  => 'tests#login',  as: 'login_session'
  get '/available' => 'tests#available'
  get '/index' => 'tests#index'

  get '/test/meet' => "tests#show", as: 'login'
  get '/404' => "tests#create"

  post '/tests/new' => "tests#new"

  get 'meetups/:meetups_id/availables' => 'availables#new', as: 'availables'
  post 'meetups/:meetups_id/availables' => 'availables#create'
end