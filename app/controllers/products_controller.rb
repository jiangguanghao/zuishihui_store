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
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      # redirect_to root_path
      flash[:notice] = "你已成功将#{@product.title}加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
      redirect_back fallback_location: root_path
  end
end
