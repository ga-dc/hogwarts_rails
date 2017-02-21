Hogwarts::Application.routes.draw do

  root to: 'houses#index'

  resources :houses do

  end
  resources :students do

  end

end
