Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: 'products#index', as: :authenticated_root
  end
=======

  authenticated :user do
    root 'products#index', as: :authenticated_root
  end

  root "application#landing"
>>>>>>> 3f65aad8f3f07751a065bda95bf45e198d64d0eb
  
  root 'application#landing'

  resources :products
  resources :users
end
