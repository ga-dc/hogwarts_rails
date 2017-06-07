Rails.application.routes.draw do

  root to: 'house#index'
  resources :houses do
    resources :students
  end

  resources :students

end
