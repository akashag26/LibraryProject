Rails.application.routes.draw do


  get 'showusers/index'

  get 'showusers/show'

  get 'manageuser/show'

  get 'details/create'



  get 'sessions/new'
  get '/admindetails' , to: 'details#myshow'
  get '/showadmins' , to:  'showadmins#index'
  get '/showusers' , to:  'showusers#index'
  post '/createadmin/myaction' , to: 'createadmin#myaction'
  get '/createadmin' ,to: 'createadmin#show'
  get '/home'     ,   to: 'homes#show'
  get '/manageuser'     ,   to: 'manageuser#show'
  get '/manageadmin'     ,   to: 'manageadmin#show'
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
