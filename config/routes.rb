Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  get 'blog', to: "posts#index"
  get 'blog/:id', to: "posts#show"

  resources :locations, only: [:index]

  resource :account, only: [:show, :edit, :update] do
    resources :posts, only: [:index, :show, :create, :update, :destroy], module: :accounts
    resources :locations, only: [:index, :show, :create, :destroy], module: :accounts
  end
end
