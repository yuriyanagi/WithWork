Rails.application.routes.draw do
  root "records#index"
  resources :records, only: [:index, :create, :edit, :update]
end
