Rails.application.routes.draw do
  devise_for :users
  get 'private/test'
  namespace :api do
    namespace :v1 do
      resources :cars
      resources :reservations
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
