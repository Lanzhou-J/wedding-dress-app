Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dresses
  resources :shops
  resources :carts
  root to: "pages#home"
  get '/introduction', to: 'pages#introduction', as: 'introduction'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/user' => 'dresses#index', :as => :user_root
end
