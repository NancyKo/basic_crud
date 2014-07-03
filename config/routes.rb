Rails.application.routes.draw do
  
  root 'users#index'

  get "log_out" => "sessions#destroy"
  get "log_in" => "sessions#new"
  get "sign_up" => "users#new"

  resources :users, :sessions 

end


#               Prefix Verb   URI Pattern                                       Controller#Action
#                 root GET    /                                                 users#index
#              log_out GET    /log_out(.:format)                                sessions#destroy
#               log_in GET    /log_in(.:format)                                 sessions#new
#              sign_up GET    /sign_up(.:format)                                sessions#index
#                users GET    /users(.:format)                                  users#index
#                      POST   /users(.:format)                                  users#create
#             new_user GET    /users/new(.:format)                              users#new
#            edit_user GET    /users/:id/edit(.:format)                         users#edit
#                 user GET    /users/:id(.:format)                              users#show
#                      PATCH  /users/:id(.:format)                              users#update
#                      PUT    /users/:id(.:format)                              users#update
#                      DELETE /users/:id(.:format)                              users#destroy
#             sessions GET    /sessions(.:format)                               sessions#index
#                      POST   /sessions(.:format)                               sessions#create
#          new_session GET    /sessions/new(.:format)                           sessions#new
#         edit_session GET    /sessions/:id/edit(.:format)                      sessions#edit
#              session GET    /sessions/:id(.:format)                           sessions#show
#                      PATCH  /sessions/:id(.:format)                           sessions#update
#                      PUT    /sessions/:id(.:format)                           sessions#update
#                      DELETE /sessions/:id(.:format)                           sessions#destroy
