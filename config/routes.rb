Hogwarts::Application.routes.draw do

  root "houses#index"

  resources :houses, only: [:index, :new, :create, :show]
  resources :students, only: [:index, :new, :create, :show]

end
