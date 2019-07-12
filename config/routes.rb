Rails.application.routes.draw do
  devise_for :users

  root 'questions#index'

  resources :users
  resources :questions do
    resources :answers, onry: [:create] do
      resources :likes, onry: [:create, :destroy]
    end
  end
  resources :categorys, onry: [:show]
end
