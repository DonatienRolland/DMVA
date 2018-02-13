class ContactMailer < ApplicationMailer
  default to: 'donatien@rollandmail.com'
  def new_contact(contact)
    @contact = contact
    mail objet: contact.objet, from: contact.email
  end
end
