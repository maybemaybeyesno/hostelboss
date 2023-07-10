Rails.application.routes.draw do
  root 'sleeps#index'
  resources :people, only: [ :index, :new, :edit, :create, :update ]
  get 'transactions', to: 'transactions#index'
  resources :rooms, only: [ :index, :new, :edit, :create, :update ]
  resources :sleeps, only: [ :index, :new, :edit, :create, :update ]
end
