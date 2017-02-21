Rails.application.routes.draw do

  root to: 'houses#index'
  resource :houses, only: [:index, :show]
  resources :students, only: [:index, :show]

#houses routes

  get     '/houses',          to: 'houses#index'
  get     '/houses/new',      to: 'houses#new'
  post    '/houses',          to: 'houses#create'

  get     '/houses/:id',      to: 'houses#show'
  get     '/houses/:id/edit', to: 'houses#edit'
  put     '/houses/:id',      to: 'houses#update'
  delete  '/houses/:id',      to: 'houses#destroy'

  # students routes
  get     '/students',          to: 'students#index'
  get     '/students/new',      to: 'students#new'
  post    '/students',          to: 'students#create'

  get     '/students/:id',      to: 'students#show'
  get     '/students/:id/edit', to: 'students#edit'
  put     '/students/:id',      to: 'students#update'
  delete  '/students/:id',      to: 'students#destroy'
end
