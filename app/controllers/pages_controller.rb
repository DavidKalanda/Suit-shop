class PagesController < ApplicationController
  def about
    @about = About.first
  end

  def contact
    @contact= Contact.all.first
  end
end
