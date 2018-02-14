class PagesController < ApplicationController

  def apropos
    @articles = Article.all
  end
  def home
    @articles = Article.all
  end

end
