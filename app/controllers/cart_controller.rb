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
    @products = session[:cart]
    @total_price = 0
    @products.each do |id, quantity|
      item = Product.where(:id => id).first
      @total_price += item.price * quantity
    end
    session[:total_price] = @total_price*100
  end

  def update_quantity
    @quantity = params[:quantity].to_i
    session[:cart] ||= {}
    session[:cart][params[:id]] ||= 0
    session[:cart][params[:id]] = @quantity
    redirect_to action: "index"
  end

  def delete_order
    session[:cart].except!(params[:id])
    redirect_to action: "index"
  end

private

  def initialize_session
    session[:cart] ||= {}
  end
end
