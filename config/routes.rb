Rails.application.routes.draw do
  root "cars#index"

  resources :cars do
   resources :comments
  end
end
