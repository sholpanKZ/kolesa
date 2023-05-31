Rails.application.routes.draw do
  get 'home/show'=> "home#show"
  root "cars#index"

  resources :cars do
   resources :comments
  end
  get "logout" => "sessions#destroy", :as => "log_out"
  get "login" => "sessions#new", :as => "log_in"
  get "sign-up" => "users#new", :as => "sign_up"
  resources :users
  resources :sessions
end
