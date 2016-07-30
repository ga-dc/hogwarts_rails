Hogwarts::Application.routes.draw do

  resources :houses
  resources :students

  root "houses#index"
end
