require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :admin do
    resources :entries
    resources :users

    root to: "users#index"
  end

  resources :entries
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users

  root to: 'entries#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
