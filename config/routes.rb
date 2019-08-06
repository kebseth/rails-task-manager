Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  resources :tasks
  # get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # post 'tasks', to: 'tasks#create'
  # delete 'tasks/:id', to: 'tasks#destroy'
  # patch 'tasks/:id', to: 'tasks#update'
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # get 'tasks/:id', to: 'tasks#show', as: 'task'
end
