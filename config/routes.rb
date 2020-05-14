Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dresses
  resources :shops
  root to: "pages#home"
  get '/user' => 'dresses#index', :as => :user_root
end
