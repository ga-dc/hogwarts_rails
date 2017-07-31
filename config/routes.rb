Rails.application.routes.draw do

  resources :houses do
    resources :students
  end

  resources :students

end
