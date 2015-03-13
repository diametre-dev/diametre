Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  get 'blog', to: "posts#index"
  get 'blog/:id', to: "posts#show"

  resource :account, only: [:show, :edit, :update] do
    resources :posts, module: :accounts
  end
end
