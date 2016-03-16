Hogwarts::Application.routes.draw do
  root to: "houses#index"

  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]
end

# Prefix Verb URI Pattern             Controller#Action
#
#     root GET  /                       houses#index
#   houses GET  /houses(.:format)       houses#index
#    house GET  /houses/:id(.:format)   houses#show
# students GET  /students(.:format)     students#index
#  student GET  /students/:id(.:format) students#show


# Prefix Verb URI Pattern                              Controller#Action
#
#           root GET  /                                        houses#index
# house_students GET  /houses/:house_id/students(.:format)     students#index
#  house_student GET  /houses/:house_id/students/:id(.:format) students#show
#         houses GET  /houses(.:format)                        houses#index
#          house GET  /houses/:id(.:format)                    houses#show
