Rails.application.routes.draw do
  root 'home#index'
  get 'checkout/show'
  get 'billing/show'
  devise_for :users
  get 'checkout', to: 'checkouts#show'
  get 'billing', to: 'billing#show'

  resources :courses do
    resources :lessons
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
