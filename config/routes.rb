Rails.application.routes.draw do

  root to: 'application#index'

    resources :houses do
      resources :students
    end

  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]

end
