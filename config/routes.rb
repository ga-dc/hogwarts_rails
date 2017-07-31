Hogwarts::Application.routes.draw do

  root to: "houses#index"
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, :new]
end



# get "hello/:name" => "greetings#hello"
#   get "houses" => "artists#index"
#   get "houses/new" => "artists#new"
#   post "houses" => "artists#create"
#   get "houses/:id" => "artists#show"
#   get "houses/:id/edit" => "artists#edit"
#   put "houses/:id" => "artists#update"
#   delete "artists/:id" => "artists#destroy"
#
#   get "songs" => "songs#index"
#   get "songs/new" => "songs#new"
#   post "songs" => "songs#create"
#   get "songs/:id" => "songs#show"
#   get "songs/:id/edit" => "songs#edit"
#   put "songs/:id" => "songs#update"
#   delete "songs/:id" => "songs#destroy"
