Hogwarts::Application.routes.draw do

  root "houses#index"
  resource :houses, only: [:index, :show, :create]
  resources :students, only: [:index, :show, :new]

end
