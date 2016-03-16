Hogwarts::Application.routes.draw do
  root to: "houses#index"

  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, :create, :new]
end

# Prefix Verb URI Pattern             Controller#Action
#
#     root GET  /                       houses#index
#   houses GET  /houses(.:format)       houses#index
#    house GET  /houses/:id(.:format)   houses#show
# students GET  /students(.:format)     students#index
#  student GET  /students/:id(.:format) students#show

# Bonus Routes
#
# Prefix Verb URI Pattern             Controller#Action
#        root GET  /                       houses#index
#      houses GET  /houses(.:format)       houses#index
#       house GET  /houses/:id(.:format)   houses#show
#    students GET  /students(.:format)     students#index
#             POST /students(.:format)     students#create
# new_student GET  /students/new(.:format) students#new
#     student GET  /students/:id(.:format) students#show
