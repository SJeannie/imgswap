Rails.application.routes.draw do
  root to: 'pictures#index'

  resources :users
  resources :picture_tags  
  resources :pictures 
  resources :comments
  resources :tags

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
