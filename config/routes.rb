Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'

  resources :help_posts, only: [:new, :create, :index, :show, :destroy]
end
