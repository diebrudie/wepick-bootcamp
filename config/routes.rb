Rails.application.routes.draw do
  get 'participants/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :activities do
    resources :proposals, only: %i[index show new create] do
      resources :votes, only: %i[create]
    end
  end
  resources :proposals, only: :destroy
end
