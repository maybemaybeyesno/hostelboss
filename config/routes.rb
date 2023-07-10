Rails.application.routes.draw do
  root 'sleeps#index'
  resources :people, only: [ :index, :new, :edit, :create, :update ]
  resources :payments, only: [ :index, :new, :edit, :create, :update ]
  resources :rooms, only: [ :index, :new, :edit, :create, :update ]
  resources :sleeps, only: [ :index, :new, :edit, :create, :update ]
end
