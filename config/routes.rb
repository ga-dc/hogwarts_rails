              #############################################
              # 201702111638L     EL MARTES   GIRO
              # GIRO:  CHANGED house#index to houses#index
              # GIRO:  CHANGED resources :student, to resources :students
              #
              #############################################
              # 201702211638L     EL MIERCOLES   GIRO
              # GIRO:  ADDED ROUTES FROM Scribble
              # Rails.application.routes.draw do
              #   get "artists" => "artists#index"
              #   get "artists/new" => "artists#new"
              #   post "artists" => "artists#create"
              #   get "artists/:id" => "artists#show"
              #   get "artists/:id/edit" => "artists#edit"
              #   put "artists/:id" => "artists#update"
              #   delete "artists/:id" => "artists#destroy"

                # Hogwarts::Application.routes.draw do
                # Hogwarts.application.routes.draw do
Rails.application.routes.draw do
      root to: 'houses#index'
                # resources :houses, only: [:index, :show]
                # resources :students, only: [:index, :show]
                # nesting resources, nesting students inside of houses
      resources :houses do
        resources :students
      end
                # resources :users
                # resource  :session

                # GIRO:  ADDED ROUTES FROM Scribble
                # Rails.application.routes.draw do
get "houses" => "houses#index" # get "houses/new" => "houses#new" # post "houses" => "houses#create" # get "houses/:id" => "houses#show" # get "houses/:id/edit" => "houses#edit" # put "houses/:id" => "houses#update" # delete "houses/:id" => "houses#destroy"
  #
get "students" => "students#index"
                # get "students/new" => "students#new"
                # post "students" => "students#create"
get "students/:id" => "students#show" # get "students/:id/edit" => "students#edit" # put "students/:id" => "students#update" # delete "students/:id" => "students#destroy"
end
