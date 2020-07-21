class UsersController < ApplicationController

  def edit
  end  

  # current_user.updateに成功した場合、root（チャット画面）にリダイレクトし、失敗した場合、editのビューが再度表示される
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end  
end
