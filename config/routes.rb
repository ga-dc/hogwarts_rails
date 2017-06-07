Rails.application.routes.draw do
  root to: "houses#index"

  resources :houses, only: [:index, :show, :new] do
    resources :students, only: [:index, :show, :new]
  end
  resources :students, only: [:index]
end
