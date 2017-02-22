Hogwarts::Application.routes.draw do

  root "houses#index"
  resources :houses, only: [:index, :show, :new, :create, :edit, :update]
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
