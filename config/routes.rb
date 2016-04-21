Hogwarts::Application.routes.draw do

  get 'enroll' => 'students#enroll'
  root to: 'houses#index'
  resources :houses
  resources :students

end
