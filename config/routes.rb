Rails.application.routes.draw do
  resources :todos, only: [:create, :update, :destroy, :index]
  root 'todos#index'
end
