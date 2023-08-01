Rails.application.routes.draw do
  root 'stays#index'

  resources :users, only: [ :new, :create, :edit, :update, :show, :destroy ]

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  resources :people, only: [ :index, :new, :edit, :create, :update ]
  resources :payments, only: [ :index, :new, :edit, :create, :update ] do
    resources :payment_allocations,
              only: [ :index, :new, :edit, :create, :update ],
              path: :allocations,
              as: :allocations
  end
  resources :rooms, only: [ :index, :new, :edit, :create, :update ]
  resources :stays, only: [ :index, :new, :edit, :create, :update ]
end
