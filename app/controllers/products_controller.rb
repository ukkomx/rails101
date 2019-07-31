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

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(object_params)
    redirect_to product_path(@product)
  end

  private

  def object_params
    params.require(:product).permit(:description, :quantity, :price, :name,
                                   :picture)  
  end
end
