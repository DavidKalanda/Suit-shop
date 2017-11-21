class PagesController < ApplicationController
  def about
    @about = About.first
    @disable_sidebar = true
    # @categories = Category.all
  end

  def contact
    @contact= Contact.all.first
    @disable_sidebar = true
    # @categories = Category.all
  end
end
