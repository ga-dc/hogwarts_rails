Rails.application.routes.draw do
  # get '/houses/:id' => 'houses#show'



# Hogwarts::Application.routes.draw do
  get 'houses/index'
  root 'houses#index'
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
