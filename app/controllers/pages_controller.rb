class PagesController < ApplicationController
  @message = Message.new
  def home
    @articles = Article.all
  end
  def contact
    @messages = Message.all
    @message = Message.new
  end

end
