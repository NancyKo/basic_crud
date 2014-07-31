Rails.application.routes.draw do
  
  root 'users#index'

  get "log_out" => "sessions#destroy"
  get "log_in" => "sessions#new"
  get "sign_up" => "users#new"

  resources :users do
  	resources :contacts 
  end
  resource :session
end


#           Prefix Verb   URI Pattern                                 Controller#Action
#              root GET    /                                           users#index
#           log_out GET    /log_out(.:format)                          sessions#destroy
#            log_in GET    /log_in(.:format)                           sessions#new
#           sign_up GET    /sign_up(.:format)                          users#new
#     user_contacts GET    /users/:user_id/contacts(.:format)          contacts#index
#                   POST   /users/:user_id/contacts(.:format)          contacts#create
#  new_user_contact GET    /users/:user_id/contacts/new(.:format)      contacts#new
# edit_user_contact GET    /users/:user_id/contacts/:id/edit(.:format) contacts#edit
#      user_contact GET    /users/:user_id/contacts/:id(.:format)      contacts#show
#                   PATCH  /users/:user_id/contacts/:id(.:format)      contacts#update
#                   PUT    /users/:user_id/contacts/:id(.:format)      contacts#update
#                   DELETE /users/:user_id/contacts/:id(.:format)      contacts#destroy
#             users GET    /users(.:format)                            users#index
#                   POST   /users(.:format)                            users#create
#          new_user GET    /users/new(.:format)                        users#new
#         edit_user GET    /users/:id/edit(.:format)                   users#edit
#              user GET    /users/:id(.:format)                        users#show
#                   PATCH  /users/:id(.:format)                        users#update
#                   PUT    /users/:id(.:format)                        users#update
#                   DELETE /users/:id(.:format)                        users#destroy
#           session POST   /session(.:format)                          sessions#create
#       new_session GET    /session/new(.:format)                      sessions#new
#      edit_session GET    /session/edit(.:format)                     sessions#edit
#                   GET    /session(.:format)                          sessions#show
#                   PATCH  /session(.:format)                          sessions#update
#                   PUT    /session(.:format)                          sessions#update
#                   DELETE /session(.:format)                          sessions#destroy


