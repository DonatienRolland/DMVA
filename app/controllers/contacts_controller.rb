class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(message_params)
    respond_to do |format|
      if @contact.valid?
        # re-initialize Home object for cleared form
        ContactMailer.new_contact(@contact).deliver
        format.html { render 'new'}
        format.js { render :file => "contacts/create.js.erb"  }
        # :format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'new' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end
  private

  def message_params
    params.require(:contact).permit(:name, :email, :objet, :message, :phone)
  end
end








