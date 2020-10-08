Rails.application.routes.draw do
  devise_for :users
  root "records#index"
  resources :records, only: [:index, :create, :edit, :update]
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end
  resources :memos, only: [:index]
end
