class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone, :validate => true
  attribute :objet, :validate => true
  attribute :message, :validate => true
  attribute :nickname, :captcha  => true




  # include ActiveModel::Model
  # include ActiveModel::Conversion
  # include ActiveModel::Validations

  # attr_accessor :name, :email, :objet, :message, :phone

  # validates :name, presence: true
  # validates :email, presence: true
  # # ,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  # validates :phone, presence: true
  # validates :objet, presence: true
  # validates :message, presence: true
  # validates :file,      :attachment => true
  # validates :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "d.rolland@ymail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
