Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, only: [:index, :show] do
    resources :plans, except: :destroy
  end
  resources :diaries
end
