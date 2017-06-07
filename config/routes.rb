Hogwarts::Application.routes.draw do
# removing the root line solved this problem or unintialized constants.
  
  root 'houses#index'

  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
