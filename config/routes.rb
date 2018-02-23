Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create ] do
  resources :doses, only: [:new, :index, :create ]
end

resources :doses, only: [:destroy]
root to: 'cocktails#index'
end

