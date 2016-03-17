Hogwarts::Application.routes.draw do

  root "houses#index"
  resource :house
  resources :students

end
