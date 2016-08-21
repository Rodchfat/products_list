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
      redirect_to products_index_path
    end
  end

  def show
  end
  
  
  
  private
  def product_params
    params.require(:product).permit(:name, :category, :category_id)
    #params.require(:article).permit(:title, :description)
  end
end
