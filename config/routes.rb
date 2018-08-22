Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  root to: 'pictures#index'

  resources :users
  resources :picture_tags
  resources :pictures
  resources :comments
  resources :tags

  post 'sessions', to: 'sessions#create'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  delete 'sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
