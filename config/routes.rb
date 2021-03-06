Rails.application.routes.draw do
  root to: "sessions#new"
  
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :dashboard, only: [:index]
  end
end
