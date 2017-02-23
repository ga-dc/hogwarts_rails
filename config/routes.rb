Hogwarts::Application.routes.draw do

  root "houses#index"
  resource :houses, only: [:index, :show, :new]
  resources :students, only: [:index, :show, :new, :create]

end
