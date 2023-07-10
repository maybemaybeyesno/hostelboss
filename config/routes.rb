Rails.application.routes.draw do
  root 'sleeps#index'
  resources :people, only: [ :index, :new, :edit, :create, :update ]
  get 'transactions', to: 'transactions#index'
  get 'rooms', to: 'rooms#index'
  get 'sleeps', to: 'sleeps#index'
end
