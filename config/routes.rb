Hogwarts::Application.routes.draw do

  root "houses#index"
  resources :houses, only: [:index, :show, :create]
  resources :students, only: [:index, :show, :create]

end
