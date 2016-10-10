Rails.application.routes.draw do

  root "houses#index"
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, :new, :create]
  # get '/houses', to: 'houses#index'
  # get '/houses/:id', to: 'houses#show'
  # get '/houses/new', to: 'hoouses#new'


end
