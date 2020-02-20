class MessagesController < ApplicationController
  protect_from_forgery except: :index
  def index
    @messages = Message.all
    @message = Message.new
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @message = User.last.messages.create!(message_params)
    @messages = Message.all
    ActionCable.server.broadcast 'room_channel',
                                 content: @message, user: @message.user
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def message_params
    params.permit(:content)
  end
end
