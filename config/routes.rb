Rails.application.routes.draw do
  root "breweries#index"
  get "ratings", to: "ratings#index"
  resources :beers
  resources :breweries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


