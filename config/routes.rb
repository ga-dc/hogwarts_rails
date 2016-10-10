Hogwarts::Application.routes.draw do

  resources :houses, :students
  root "houses#index"

  # get
  # root "houses#index"
  # resources :houses, only: [:index, :show]
  # resources :students, only: [:index, :show]

end
