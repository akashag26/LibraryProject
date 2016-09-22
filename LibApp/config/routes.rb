Rails.application.routes.draw do

  get 'details/create'

  get 'homes/roomreservation'

  get 'sessions/new'

  get '/home'     ,   to: 'homes#show'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  get  'userdetails' , to: 'details#show'
  get  'managerooms',  to: 'homes#managerooms'
  get  'managelibmember', to: 'homes#managelibmember'
  get  'roomreservation',  to: 'bookings#roomreservation'


  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #get     'deletereservation', to:'bookings#delete'
  #delete  '/booking', to: 'booking#destroy'
  root 'sessions#new'
  resources :users
  resources :details
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
