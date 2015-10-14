Rails.application.routes.draw do

  resources :users
  resources :documents

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get '/five', to: 'fives#index'
  get '/imitation', to: 'imitations#index'
  get '/prompt', to: 'prompts#index'

  root 'users#new'
end
