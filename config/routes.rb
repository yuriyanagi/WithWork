Rails.application.routes.draw do
  devise_for :users
  root "records#index"
  resources :records, only: [:index, :create, :edit, :update]
  resources :projects do
    resources :tasks, only: [:create]
  end
end
