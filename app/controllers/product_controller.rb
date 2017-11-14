class ProductController < ApplicationController
  def index
    @products = Product.order("name").page(params[:page]).per(3)
    @categories = Category.all
  end
  def show
    
  end
end
