Rails.application.routes.draw do

  # root to: "houses/index"
  # resources :house, only: [:index, :show]
  # resources :students, only: [:index, :show]
  get '/houses', to: 'houses#index'
  get '/houses/:id', to: 'houses#show'
  get '/houses/new', to: 'hoouses#new'

end
