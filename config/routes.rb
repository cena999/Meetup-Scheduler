Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'schedules#index'

  get '/create' => 'schedules#create', as: 'create_schedule'
  get '/login'  => 'schedules#login',  as: 'login_schedule'
end