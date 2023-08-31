Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
    resources :users, only: [:index, :show] do
      resources :orders, only: [:index, :show]
    end
    resources :products, only: [:index, :show] do
      resources :orders, only: [:index, :show]
    end
  
end
