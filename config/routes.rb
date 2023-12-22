Rails.application.routes.draw do
  root to: 'users#new'
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
end
