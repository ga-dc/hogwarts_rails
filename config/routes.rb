Hogwarts::Application.routes.draw do

 root "houses#index"
 resources :houses, only: [:index, :show]
 resources :students, only: [:index, :show]

end




# Rails.application.routes.draw do
#
#   root to: "house#index"
#   resource :houses, :students
# end

# Rails.application.routes.draw do
#
#   get "/house",to: "house#index"
#   resource :house, only: [:index, :show]
#   resources :students, only: [:index, :show]
#
# end
