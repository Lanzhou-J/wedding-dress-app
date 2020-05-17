Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dresses
  resources :shops
  resources :carts

  root to: "pages#home"
  get '/introduction', to: 'pages#introduction', as: 'introduction'

  get '/user' => 'dresses#index', :as => :user_root
  get '/charges/new', to: 'charges#new', as: 'new_charge'
  post '/buynow', to: 'charges#buy_now', as: 'buy_now'
  post '/buycart', to: 'charges#buy_cart', as: 'buy_cart'
end
