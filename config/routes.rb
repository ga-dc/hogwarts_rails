Rails.application.routes.draw do
  # get '/houses/:id' => '/#show'

# Hogwarts::Application.routes.draw do
  get 'houses/:name' => 'houses#show'
  get 'houses/index'
  root 'houses#index'
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
