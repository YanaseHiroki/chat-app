class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  # 中間テーブル
  has_many :room_users
  # 1人のユーザーは複数のチャットルームに参加
  has_many :rooms, through: :room_users
  # 1人のユーザーに複数のメッセージ
  has_many :messages
end
