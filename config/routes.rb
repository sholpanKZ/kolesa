Rails.application.routes.draw do
   # Defines the root path route ("/")
   root "cars#index"

   get "/cars", to: "cars#index"
    get "/cars/:id", to: "cars#show"
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
