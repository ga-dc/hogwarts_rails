Hogwarts::Application.routes.draw do

  get "houses" => "houses#index"
  get "houses/:id" => "houses#show"

  resource :houses #, only: [:index, :show]
  resources :students #, only: [:index, :show]

end
