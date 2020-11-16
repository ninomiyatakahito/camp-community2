Rails.application.routes.draw do
  get 'orders/index'
  resources :tags
  devise_for :users
  get 'events/index'
  root to: "events#index"
  resources :events do
    resources :orders, only: [:index, :create]
  end
end
