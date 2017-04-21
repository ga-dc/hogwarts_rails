Hogwarts::Application.routes.draw do

  root "house#index"
  resources :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
