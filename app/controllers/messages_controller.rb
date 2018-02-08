class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
@message.request = request
if @contact.deliver
  flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
else
  flash.now[:error] = 'Cannot send message.'
  render :new
end
    # @message.save
    # if @message.save
    #   redirect_to root_path
    # else
    #   render :index
    # end
  end

  private

  def message_params
    params.require(:message).permit(:titre, :objet, :content, :photo, :nom, :email)
  end

end



