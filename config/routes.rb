Hogwarts::Application.routes.draw do

  root to: "houses#index"
  resource :house
  resources :students

end
