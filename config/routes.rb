Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # user
  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  get '/user/login/check', to: 'users#check_login_status'
  delete '/users/logout', to: 'users#logout'

  # todos
  post '/todos', to: 'todos#create'
  put '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy'
  get '/todos', to: 'todos#index'
end
