Hogwarts::Application.routes.draw do

  root to: "house#index"
  
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
