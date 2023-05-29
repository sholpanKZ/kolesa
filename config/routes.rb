Rails.application.routes.draw do
  root "cars#index"

  resources :cars do
   resources :comments
  end
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :sessions
end
