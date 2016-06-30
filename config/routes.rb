Hogwarts::Application.routes.draw do

  root "houses#index"
  resources :students
  resources :houses

end
