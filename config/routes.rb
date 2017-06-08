Rails.application.routes.draw do
  resources :products
  resources :purchases, only: [:create, :show]
end
