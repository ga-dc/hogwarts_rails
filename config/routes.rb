Rails.application.routes.draw do

  get 'house/index'

  root to: "house#index"
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
