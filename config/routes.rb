Rails.application.routes.draw do
  devise_for :users
  get 'home/show' => "home#show"
  root "cars#index"

  resources :cars do
    resources :comments
  end
end
