Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :plants, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
