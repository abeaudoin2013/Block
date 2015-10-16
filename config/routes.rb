Rails.application.routes.draw do

  resources :users

  get '/documents', to: 'documents#index'
  post '/five', to: 'fives#create'
 
  post '/imiation', to: 'imitations#create', as: :imitation_doc
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get '/five', to: 'fives#index'
  get '/imitation', to: 'imitations#index'
  get '/prompts', to: 'prompts#index'
  post '/prompts', to: 'prompts#create'

  root 'sessions#new'
end
