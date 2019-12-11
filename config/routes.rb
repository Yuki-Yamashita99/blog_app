Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations"}
  resources :posts, only: [:index, :show]

  namespace :login do
    resources :posts
  end
  
  namespace :admin do
    root to: "posts#index"
    resources :posts
  end

  root to: "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
