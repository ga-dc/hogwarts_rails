Hogwarts::Application.routes.draw do

  get 'house/index'

  root "house#index"
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
