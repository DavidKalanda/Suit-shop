Rails.application.routes.draw do
  root to: 'product#index' , as: 'home'
  get 'products', to: 'product#index', as:'products'

  get 'products/:id', to: 'product#show', as:'product', id: /\d+/

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
