Rails.application.routes.draw do

  # Routes for manage rooms
  get 'rooms/add', to: 'rooms#add'
  #get 'rooms/delete', to: 'rooms#delete'
  get 'rooms/show'
  get 'rooms/update'
  get 'rooms/show_history'
  get 'sessions/new'
  get 'rooms/detailsofroom', to: 'rooms#detailsofroom'
  get 'rooms/viewdetails', to: 'rooms#viewdetails'
  get 'rooms/detailsofroom'
  get 'homes/roomreservation'
  get '/bookings/new' , to: 'bookings#new'

  get 'rooms/show_schedule', to: 'rooms#show_schedule'
  get 'rooms/edit', to: 'rooms#edit'

  get 'sessions/new'
  get 'showusers/index'
  get 'showusers/show'
  #check this one need to change position
  get 'roomreservation', to: 'bookings#roomreservation'
  get 'manageuser/show'
  get 'details/create'
  get 'sessions/new'
  get '/admindetails', to: 'details#myshow'
  get '/showadmins', to: 'showadmins#index'
  get '/showusers', to: 'showusers#index'
  post '/createadmin/myaction', to: 'createadmin#myaction'
  get '/createadmin', to: 'createadmin#show'
  get '/home', to: 'homes#show'
  get '/manageuser', to: 'manageuser#show'
  get '/manageadmin', to: 'manageadmin#show'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get 'userdetails', to: 'details#show'
  get 'manageroom', to: 'homes#manageroom'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'sessions#new'
  resources :users
  resources :rooms
  resources :details
  resources :bookings


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
