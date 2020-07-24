Rails.application.routes.draw do
  devise_for :users

  # ルートパスをrooms/index.html.erbにする
  root "rooms#index"
  # ユーザー編集に必要なルーティングは、editとupdateなので、
  resources :users, only: [:edit, :update]
  # 新規チャットルームの作成で動くアクションは「new」と「create」のみ
  resources :rooms, only: [:new, :create, :destroy] do
    # ルームでのメッセージ投稿に必要なルーティングは、editとupdateなので、
    resources :messages, only: [:index, :create]
  end
end
