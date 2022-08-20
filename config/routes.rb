Rails.application.routes.draw do
  devise_for :users
  resources :items
  root 'items#index'
  delete  'delete_all', to: 'items#delete_all'
end
