class ProductController < ApplicationController
  def index
    @products = Product.order("name").page(params[:page]).per(6)
    @categories = Category.all
  end

  def show
    @product= Product.find(params[:id])
    @categories = Category.all
    @disable_sidebar = true
  end

  def new
    @categories = Category.all
    @new = Product.order("created_at DESC").page(params[:page]).per(6)
  end

  def updated
    @updated = Product.order("updated_at DESC").page(params[:page]).per(6)
    @categories = Category.all
  end

  def search_results
    @categories = Category.all
    if params[:categories] != ""
      @result =Product.keyword_search(params[:search_keywords]).where("category_id = ?", params[:categories]).page(params[:page]).per(6)
    else
    @result =Product.keyword_search(params[:search_keywords]).page(params[:page]).per(6)
    end
  end
end
