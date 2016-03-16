Rails.application.routes.draw do

  root "houses#index"
  resources :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
