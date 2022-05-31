Rails.application.routes.draw do
  get 'friends/show'
  get 'friends/hola'
  get 'participants/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :profiles
  get "friends", to: "friendships#show_friends"
  resources :activities do
    resources :participants, only: :create
    resources :proposals, only: %i[index show new create edit update] do
      resources :votes, only: %i[create]
    end
  end
  resources :proposals, only: :destroy
end
