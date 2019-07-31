Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'products#index', as: :authenticated_root
  end

  root "application#landing"

  resources :products
  resources :users
end
