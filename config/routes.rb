Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users

  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'

  namespace :api do
    namespace :v1 do
      resources :cars
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
