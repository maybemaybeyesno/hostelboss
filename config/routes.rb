Rails.application.routes.draw do
  root 'sleeps#index'
  resources :people, only: [ :index, :new, :edit, :create, :update ]
  resources :payments, only: [ :index, :new, :edit, :create, :update ] do
    resources :payment_allocations,
              only: [ :index, :new, :edit, :create, :update ],
              path: :allocations,
              as: :allocations
  end
  resources :rooms, only: [ :index, :new, :edit, :create, :update ]
  resources :sleeps, only: [ :index, :new, :edit, :create, :update ]
end
