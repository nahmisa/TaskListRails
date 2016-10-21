Rails.application.routes.draw do
  root   'sessions#login'
  # for log-in/log-out

  get    'tasks/'         => 'tasks#index'
  post   'tasks/'         => 'tasks#create'
  get    'tasks/new'      => 'tasks#new'
  get    'tasks/:id/edit' => 'tasks#edit', as: "edit_task"
  patch  'tasks/:id/complete' => 'tasks#complete', as: 'complete_task'
  patch  'tasks/:id/uncomplete' => 'tasks#uncomplete', as: 'uncomplete_task'
  get    'tasks/:id'      => 'tasks#show', as: "task"
  patch  'tasks/:id'      =>  'tasks#update'


  delete 'tasks/:id'      => 'tasks#destroy'

  # User authentication
  get "/auth/:provider/callback" =>  "sessions#create"
  # this allows users to choose which provier to log-in with
  get "/auth/login", to: "sessions#login", as: "login"
  delete "/auth/logout", to: "sessions#logout", as: "logout"

  get '/sessions/login_failure' => 'sessions#login_failure', as: 'login_failure'

end
