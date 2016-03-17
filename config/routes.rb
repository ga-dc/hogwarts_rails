Hogwarts::Application.routes.draw do

  root to: "houses#index"
  resources :houses, :students, only: [:index, :show]
  
end
