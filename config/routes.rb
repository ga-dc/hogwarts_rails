Hogwarts::Application.routes.draw do

  root to: 'houses#index'
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
