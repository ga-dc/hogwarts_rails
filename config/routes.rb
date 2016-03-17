Rails.application.routes.draw do
    root to: 'houses#index'

    resources :house, only: [:index, :show]
    resources :students, only: [:index, :show]

end
