Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  post 'post/create'
  post 'post/like'
  post 'post/comment'
  get 'user/index'
  get 'user/:id', to: 'user#profile'
  post 'user/avatar'
  post 'user/follow'
  post 'user/unfollow'
  post 'user/username'
  post 'post/repost'
  get 'community/index'
  post 'community/create'
  post 'community/join'
  post 'community/exit'
  get 'community/:id', to: 'community#community'
end
