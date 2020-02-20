class UsersController < ApplicationController
  protect_from_forgery except: :new

  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @user = User.create!(user_params)
    @message = Message.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
