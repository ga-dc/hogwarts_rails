Hogwarts::Application.routes.draw do

  root to: "houses#index"
  # resources :houses
  # resources :students
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, :create, :new]

end
