Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  get 'blog', to: "posts#index"
  get 'blog/:id', to: "posts#show"

  resources :locations, only: [:index]

  resource :account, only: [:show, :edit, :update] do
    resources :posts, module: :accounts
    resources :locations, module: :accounts
  end
end
