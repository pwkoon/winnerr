Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories, only: [:index, :show] do
    resources :listings, only: [:index]
  end
  resources :listings, except: [:index] do
    resources :prices
  end
  resources :projects, only: [:index, :show]
end
