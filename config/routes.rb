Rails.application.routes.draw do
    root to: 'houses#index'
    resources :houses
    resources :students
end
