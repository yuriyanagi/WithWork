Rails.application.routes.draw do
  devise_for :users
  root "records#index"
  resources :records, only: [:index, :create, :edit, :update]
  resources :projects, only: [:index, :show, :new, :create, :edit, :update]
end
