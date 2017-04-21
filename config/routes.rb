Rails.application.routes.draw do

  root to: 'houses#index'

  resource :houses do
    resources :students
  end

    # get     '/houses',          to: 'houses#index'
    # get     '/houses/new',      to: 'houses#new'
    # post    '/houses',          to: 'houses#create'
    # get     '/houses/:id',      to: 'houses#show'
    #
    #
    # get     '/students',          to: 'students#index'
    # get     '/students/new',      to: 'students#new'
    # post    '/students',          to: 'students#create'
    # get     '/students/:id',      to: 'students#show'

end
