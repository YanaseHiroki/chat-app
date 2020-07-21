Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  # ユーザー編集に必要なルーティングは、editとupdateなので、
  resources :users, only: [:edit, :update]
end
