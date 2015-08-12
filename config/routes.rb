Rails.application.routes.draw do
  mount Spree::Core::Engine, at: '/'

  root to: 'spree/products#index'
end
