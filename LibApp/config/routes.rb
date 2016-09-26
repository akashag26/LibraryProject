Rails.application.routes.draw do

  # Routes for manage rooms
  get 'rooms/add', to: 'rooms#add'
  #get 'rooms/delete', to: 'rooms#delete'
  get 'rooms/show'
  get 'rooms/update'
  get 'rooms/show_history'
  get 'rooms/reserveroom', to: 'rooms#reserveroom'
  get 'rooms/detailsofroom', to: 'rooms#detailsofroom'
  get 'rooms/viewdetails', to: 'rooms#viewdetails'
  get 'rooms/detailsofroom'
  get 'homes/roomreservation'
  get '/bookings/new0' , to: 'bookings#new0'
  get '/bookings/new1' , to: 'bookings#new1'
  get '/bookings/new2' , to: 'bookings#new2'
  get '/bookings/new3' , to: 'bookings#new3'
  get '/bookings/new4' , to: 'bookings#new4'
  get '/bookings/new5' , to: 'bookings#new5'
  get '/bookings/new6' , to: 'bookings#new6'
  get 'bookings/destroybooking', to: 'bookings#destroybooking'
  get  'roomreservation',  to: 'bookings#roomreservation'

  get 'showuserhistory', to:'booking_histories#showuserhistory'
  get 'showroomhistory', to:'booking_histories#showroomhistory'

  get 'rooms/show_schedule', to: 'rooms#show_schedule'
  get 'rooms/edit', to: 'rooms#edit'
  get 'bookinghistroycreate', to: 'booking_histories#addhistory'
  get 'sessions/new'
  get 'showusers/index'
  get 'showusers/show'
  #check this one need to change position
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
  root 'sessions#homepage'
  resources :users
  resources :rooms
  resources :details
  resources :bookings


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
