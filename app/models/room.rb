class Room < ApplicationRecord
  # 中間テーブル
  has_many :room_users
  # 1つのチャットルームに2人のユーザー
  has_many :users, through: :room_users
  # 1つのチャットルームに複数のメッセージ
  has_many :messages

  # ルーム名が存在（presence）している場合のみ作成可（true）
  validates :name, presence: true
end
