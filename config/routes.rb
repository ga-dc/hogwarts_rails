Hogwarts::Application.routes.draw do

  root to: 'houses#index'
  get '/students/new' => 'students#new'
  post '/students' => 'students#create'
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, :new, :create]

end
