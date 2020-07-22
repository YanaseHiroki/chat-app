Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  # ユーザー編集に必要なルーティングは、editとupdateなので、
  resources :users, only: [:edit, :update]
  # 新規チャットルームの作成で動くアクションは「new」と「create」のみ
  resources :rooms, only: [:new, :create]
end
