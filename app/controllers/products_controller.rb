class ProductsController < ApplicationController
  def index
    @products = Product.all
    #code
  end

  def show
    @product = Product.find(params[:id])
    #code
  end
end
