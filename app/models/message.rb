class Message < ApplicationRecord
  # 1つの投稿に1つの部屋
  belongs_to :room
  # 1つの投稿に1人のユーザー
  belongs_to :user
  # 各レコードと画像ファイルを1対1の関係で紐づける
  has_one_attached :image
  
  # 投稿にメッセージが存在（presence）している場合のみ作成可（true）
  validates :content, presence: true
end
