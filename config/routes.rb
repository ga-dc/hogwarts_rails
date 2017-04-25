Hogwarts::Application.routes.draw do

  get 'houses/index'

  root "houses#index"
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]

end
