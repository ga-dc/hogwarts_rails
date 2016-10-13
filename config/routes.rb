Hogwarts::Application.routes.draw do

  root "houses#index"
  resources :houses, :students
  #houses_path "houses#index"


end
