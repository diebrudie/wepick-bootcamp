Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :profiles, only: %i[show edit update]
  get "friends", to: "friendships#index", as: :friendships
  resources :activities do
    resources :participants, only: :create
    resources :proposals, only: %i[index show new create edit update] do
      post "vote_toggle", to: "votes#toggle", as: :vote_toggle
    end
  end
  resources :proposals, only: :destroy
end
