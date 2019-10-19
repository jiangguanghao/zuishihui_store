class ProductsController < ApplicationController
  def index
    @products = Product.all
    #code
  end

  def show
    @product = Product.find(params[:id])
    #code
  end

  def add_to_cart
    @product = Product.find(params[:id])
    current_cart.add_product_to_cart(@product)
    # redirect_to root_path
    redirect_back fallback_location: root_path
    flash[:notice] = "加入购物车"
  end
end