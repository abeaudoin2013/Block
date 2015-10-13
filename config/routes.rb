Rails.application.routes.draw do

  resources :users
  resources :documents

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  root 'users#new'
end
