Rails.application.routes.draw do
  root 'people#index'
  get 'people', to: 'people#index'
  get 'transactions', to: 'transactions#index'
  get 'rooms', to: 'rooms#index'
end
