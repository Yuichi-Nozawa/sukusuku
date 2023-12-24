Rails.application.routes.draw do
  root to: 'babies#index'
  resources :babies, only:[:index, :new, :create, :show]
  resources :babies do
    resources :records, only: [:index, :new, :create]
  end
end
