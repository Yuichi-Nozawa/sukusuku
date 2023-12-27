Rails.application.routes.draw do
  devise_for :users
  root to: 'babies#index'
  resources :babies, only:[:index, :new, :create, :show]
  resources :babies do
    resources :records, only: [:index, :new, :create]
  end
  resources :users do
    resources :records, only: [:index, :new, :create]
  end
end
