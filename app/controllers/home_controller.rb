class HomeController < ApplicationController

  def index
    @pages = Page.all
    @posts = Post.all
  end

end
