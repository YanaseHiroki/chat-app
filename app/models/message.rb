class Message < ApplicationRecord
  # 1つの投稿に1つの部屋
  belongs_to :room
  # 1つの投稿に1人のユーザー
  belongs_to :user
  # 各レコードと画像ファイルを1対1の関係で紐づける
  has_one_attached :image
  # テキストが存在していなくても、画像の投稿が可能となります
  validates :content, presence: true, unless: :was_attached?
  
  # 画像が添付されている？
def was_attached?
  self.image.attached?
end
end
