Hogwarts::Application.routes.draw do

  root "houses#index"
  resources :houses, :students


end
