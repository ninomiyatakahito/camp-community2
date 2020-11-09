Rails.application.routes.draw do
  get 'orders/index'
  resources :orders
  resources :orders
  devise_for :users
  get 'events/index'
  root to: "events#index"
  resources :events 
  resources :events do
    resources :orders, only: [:index, :create]
  end
end
