class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(object_params)
    @product.save
    redirect_to products_path
  end

  private

  def object_params
    params.require(:product).permit(:description, :quantity, :price)  
  end
end
