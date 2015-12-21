Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount LetterOpenerWeb::Engine, at: "/mail" if Rails.env.development?
  devise_for :users

  root 'landing#index'

  resources :notes
  resources :skills
  resources :tags
  resources :categories
  resources :books
  resources :jobs

  # API
  namespace :api, constraints: {format: :json} do
    # Version 1
    namespace :v1 do
      post 'books/search'
    end
  end

end