Hogwarts::Application.routes.draw do

  root to: "houses#index"
  resource :houses 
    resources :students



end
