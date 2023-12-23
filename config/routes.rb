Rails.application.routes.draw do
  root to: 'babies#index'
  resources :babies, only:[:index, :new, :create, :show]
  resources :babies do
    resources :actions, only: [:index, :new, :create]
  end
end
