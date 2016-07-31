Rails.application.routes.draw do

  resources :houses, only: [:index, :show, :create, :new]
  resources :students, only: [:index, :show, :create, :new]

end
