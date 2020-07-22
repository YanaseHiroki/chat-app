class Message < ApplicationRecord
end
# 1つの投稿に1つの部屋
belongs_to :room
# 1つの投稿に1人のユーザー
belongs_to :user

# メッセージが存在（presence）している場合のみ作成可（true）
validates :message, presence: true
