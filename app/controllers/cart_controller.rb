class CartController < ApplicationController
  before_action :initialize_session

  def add
    @disable_sidebar = true

    session[:cart] ||= {}
    session[:cart][params[:id]] ||= 0
    session[:cart][params[:id]] += 1

    redirect_to action: "index"

  end

  def index
    @disable_sidebar = true
    session[:cart] ||= {}
  end

  def update_quantity
    @quantity = params[:quantity]
    session[:cart] ||= {}
    session[:cart][params[:id]] ||= 0
    session[:cart][params[:id]] = @quantity
    redirect_to action: "index"
  end

  def delete_order
    
  end


private

  def initialize_session
    session[:cart] ||= {}
    # @cart = session[:cart]
  end
end
