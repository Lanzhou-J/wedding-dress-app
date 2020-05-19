Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dresses
  resources :shops
  resources :carts

  root to: "pages#home"
  get '/introduction', to: 'pages#introduction', as: 'introduction'

  get '/user' => 'dresses#index', :as => :user_root
  get "/payments/session", to: "payments#get_stripe_id"
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"

  get '/venues', to: "venues#index", as: 'venues'
  get '/venues/:id', to: "venues#show", as: 'venues_show'
end
