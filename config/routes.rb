Rails.application.routes.draw do

  root "houses#index"
  resources :houses, only: [:index, :show, :new, :create]
  resources :students, only: [:index, :show, :new, :create, :destroy]

end
