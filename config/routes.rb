Hogwarts::Application.routes.draw do
  resources :houses, only: [:index, :show] do
    resources :students, except: [:index, :create]
  end
  resources :students, only: [:index, :new, :create]

  root 'houses#index'
end
