Rails.application.routes.draw do

  root to: "house#index"
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, new]

end
