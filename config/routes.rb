Rails.application.routes.draw do
  devise_for :users
  root "users#show"
  resources :users, only: [:show]
  resources :records, only: [:index, :create, :edit, :update]
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end
  resources :memos
end
