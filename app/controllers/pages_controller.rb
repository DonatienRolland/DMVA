class PagesController < ApplicationController

  def apropos
    @articles = Article.all
    @contact = Contact.new
  end
  def home
    @articles = Article.all
    @contact = Contact.new
  end
  def realisation
    @contact = Contact.new
  end

end
