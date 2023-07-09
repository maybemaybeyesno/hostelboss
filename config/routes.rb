Rails.application.routes.draw do
  root 'sleeps#index'
  get 'people', to: 'people#index'
  get 'transactions', to: 'transactions#index'
  get 'rooms', to: 'rooms#index'
  get 'sleeps', to: 'sleeps#index'
end
