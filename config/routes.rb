Rails.application.routes.draw do
  devise_for :users
  root "records#index"
  resources :records, only: [:index, :create, :edit, :update]
end
