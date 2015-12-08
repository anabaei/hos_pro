class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
   
  end
  
  def create
    @product = Product.new(params.require(:product).permit(:sku))
  if @product.save
    render "products/index" 
  else
    render 'index'
    end
  end

end
