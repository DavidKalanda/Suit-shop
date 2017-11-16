class CategoriesController < ApplicationController
  def category_output
    #@category = Category.find(params[:id])
    @categories = Category.all
    @products_cat = Product.where(category_id: params[:id]).order(id: :desc).
                page(params[:page]).per(6)
  end
end
