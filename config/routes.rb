Rails.application.routes.draw do

  get "/house", to: "house#index"
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end

Rails.application.routes.draw do

  get "/student", to: "student#index"
  resource :house, only: [:index, :show]
  resources :students, only: [:index, :show]

end
