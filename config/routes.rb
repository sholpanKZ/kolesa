Rails.application.routes.draw do
  devise_for :users
  get 'home/show' => "home#show"
  root "cars#index"

  resources :cars do
    resources :comments
    resources :user_cars, only: [:index]
  end
end
