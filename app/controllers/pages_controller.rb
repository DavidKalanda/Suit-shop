class PagesController < ApplicationController
  def about
    @about = About.first
    # @categories = Category.all
  end

  def contact
    @contact= Contact.all.first
    # @categories = Category.all
  end
end
