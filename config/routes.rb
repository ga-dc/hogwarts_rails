Rails.application.routes.draw do

  root "house#index"
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]

end
