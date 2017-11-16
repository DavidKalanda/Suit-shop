class ProductController < ApplicationController
  def index
    @products = Product.order("name").page(params[:page]).per(6)
    @categories = Category.all
  end
  
  def show
    @product= Product.find(params[:id])
  end
end
