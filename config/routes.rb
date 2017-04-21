Hogwarts.application.routes.draw do

  root to: "house#index"
  resources :house, only: [:index, :show] do
  resources :students, only: [:index, :show]

end
 end
