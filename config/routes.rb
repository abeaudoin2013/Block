Rails.application.routes.draw do

  resources :users
  resources :documents

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get '/five', to: 'exercises#five'
  get '/imitation', to: 'exercises#imitation'
  get '/prompt', to: 'exercises#prompt'

  root 'users#new'
end
