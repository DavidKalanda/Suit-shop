Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/contact'

  root to: 'product#index' , as: 'home'
  get 'products', to: 'product#index', as:'products'

  get 'products/:id', to: 'product#show', as:'product', id: /\d+/

  get 'category/:id', to: 'categories#category_output', as:'category', id: /\d+/

  get 'about', to: 'pages#about', as:'about'

  get 'contact', to: 'pages#contact', as:'contact'

  get 'new', to: 'product#new', as:'new'

  get 'updated', to: 'product#updated', as:'updated'

  get 'search_results' => 'product#search_results', as: 'search_results'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
