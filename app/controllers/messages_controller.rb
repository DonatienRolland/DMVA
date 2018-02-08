class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    if @message.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:titre, :objet, :content, :photo, :nom, :email)
  end

end


