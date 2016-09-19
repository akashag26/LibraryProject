Rails.application.routes.draw do

  get 'details/create'



  get 'sessions/new'

  get '/home'     ,   to: 'homes#show'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  get  'userdetails' , to: 'details#show'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'sessions#new'
  resources :users
  resources :details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
