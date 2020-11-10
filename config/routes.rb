Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # route to list the tasks
  get "index", to: "tasks#index"
end
