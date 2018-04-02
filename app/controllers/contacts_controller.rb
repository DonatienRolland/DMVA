class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirmation
    authorize Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    # @contact.request = request
      if @contact.valid?
        ContactMailer.new_contact(@contact).deliver
        flash.now[:error] = nil
      else
        flash.now[:error] = "Le message n'a pas pu être envoyé"
        render 'new'
      end

  end
  private

  # def message_params
  #   params.require(:contact).permit(:name, :email, :objet, :message, :phone)
  # end
end








