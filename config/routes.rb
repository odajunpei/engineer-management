Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :help_posts, only: [:new, :create, :index, :show, :destroy] do
    resources :help_favorites, only: [:create, :destroy]
    resources :help_comments, only: [:create, :destroy, :update]
  end

  resources :users, only: [:show, :edit]
end
