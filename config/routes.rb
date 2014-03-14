Pricemeter::Application.routes.draw do
  devise_for :users
  root to: 'high_voltage/pages#show', id: 'homepage'
  resources :products, only: [:index, :show]
  resources :supermarkets, only: [:index]
end