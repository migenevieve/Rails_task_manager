Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# CRUD
# Create
get 'tasks/new', to: 'tasks#new'
# Read
# all tasks
get 'tasks', to: 'tasks#index'
# one tasks

# Update
# Delete
end
