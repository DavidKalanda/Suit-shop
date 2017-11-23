class CartController < ApplicationController
  before_action :initialize_session

def add
  params.permit(:id, :quantity)
  quantity = params[:quantity]
  @disable_sidebar = true
  session[:cart] ||= {}
  session[:cart][params[:id]] ||= 0
  session[:cart][params[:quantity]] +=quantity
  redirect_to action: "index"
end

def index
   @disable_sidebar = true
  session[:cart] ||= {}
end

  private

  def initialize_session
    session[:cart] ||= {}
    # @cart = session[:cart]
  end
end
