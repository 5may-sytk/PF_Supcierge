class Public::UsersController < ApplicationController
  def show
    @user =  current_user
  end

  def info
    @user = current_user
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :is_active)
  end
end
