Rails.application.routes.draw do
  root to: 'babies#index'
  resources :babies, only:[:index, :new, :create, :show]
end
