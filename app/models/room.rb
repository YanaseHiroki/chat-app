class Room < ApplicationRecord
  # 中間テーブル
  has_many :room_users
  # 1つのチャットルームに2人のユーザー
  has_many :users, through: :room_users
end
