Hogwarts::Application.routes.draw do

  root "houses#index"

  resources :houses, only: [:index, :new, :show]
  resources :students, only: [:index, :new, :show]

end
