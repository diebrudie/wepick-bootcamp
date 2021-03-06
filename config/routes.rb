Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :profiles, only: %i[index show edit update]
  get "friends", to: "friendships#index", as: :friendships
  post "friends", to: "friendships#create"
  delete "friends", to: "friendships#destroy"
  resources :activities do
    resources :participants, only: %i[index create new]
    resources :proposals, only: %i[show new create edit update]
  end
  resources :participants, only: :destroy
  resources :proposals, only: :destroy do
    resources :votes, only: %i[create]
  end

  resources :votes, only: %i[destroy]
  # resources :profiles, only: %i[destroy]
end
