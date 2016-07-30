Hogwarts::Application.routes.draw do

  root "houses#index"
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
