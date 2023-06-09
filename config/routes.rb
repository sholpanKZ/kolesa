Rails.application.routes.draw do
  devise_for :users
  get 'home/show' => "home#show"
  root "cars#index"

  resources :user_cars, only: [:index]
  resources :cars do
    resources :comments
  end
end
