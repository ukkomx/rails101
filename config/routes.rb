Rails.application.routes.draw do
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: 'products#index', as: :authenticated_root
  end
  
  root 'application#landing'

  resources :products
  resources :users
end
