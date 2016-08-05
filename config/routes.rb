Hogwarts::Application.routes.draw do

  root "house#index"
  resource :houses, only: [:index, :show]
  resources :students, only: [:index, :show]

end
