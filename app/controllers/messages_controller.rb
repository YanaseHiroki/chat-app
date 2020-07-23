class MessagesController < ApplicationController
  def index
    # フォームでメッセージを送信するときに引数として渡す
    # 情報を持っていない新規メッセージインスタンス
    @message = Message.new
    # どの部屋でメッセージを投稿したか
    @room = Room.find(params[:room_id])
  end

  def create
    # どの部屋でメッセージを投稿したか
    @room = Room.find(params[:room_id])
    # どの部屋で投稿したか分かるmessageのインスタンスを生成する
    @message = @room.messages.new(message_params)
    # テーブルに保存
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end


  private

  def message_params
    # user_idと紐付いたメッセージを送るためのストロングパラメーター
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
