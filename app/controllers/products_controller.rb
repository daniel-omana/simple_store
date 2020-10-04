class ProductsController < ApplicationController
  def index
    @products = Product.order('title ASC')
  end

  def show
    @product = Product.find(params[:id])
  end
end
