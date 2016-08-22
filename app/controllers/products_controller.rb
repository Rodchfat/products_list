class ProductsController < ApplicationController
 
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render "new"
    end
  end

  def show
  end
  
  
  
  private
  def product_params
    params.permit(:name, :category)
    #params.require(:article).permit(:title, :description)
  end
  
end
