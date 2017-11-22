class CartController < ApplicationController
  def index
    @cart = session[:cart] || {}
    @disable_sidebar = true
  end

  def add
    id= params[:id]
    session[:cart] << id unless session[:cart].include?(id)
    cart[id] = (cart[id] || 0) + 1

    redirect_to action: "index"
    @disable_sidebar = true
  end

  private

  def initialize_session
    session[:cart] += 1
    @cart = session[:cart]
  end
end
