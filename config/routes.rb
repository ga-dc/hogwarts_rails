Rails.application.routes.draw do

  resources :houses, :students

  root "houses#index"

end
