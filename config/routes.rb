Rails.application.routes.draw do
  get 'todos/index'
  devise_for :users
  root "records#index"
  resources :records, only: [:index, :create, :edit, :update]
end
