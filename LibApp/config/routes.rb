Rails.application.routes.draw do
  get 'rooms/add'
  get 'rooms/delete'
  get 'rooms/show'
  get 'rooms/update'
  get 'rooms/show_history'
  get 'sessions/new'


  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'sessions#new'
  resources :users
  resources :rooms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
