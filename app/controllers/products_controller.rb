class ProductsController < ApplicationController

  def new
    @product = Product.new

  end

  def create
    @product = Product.new(product_params)
    @product.save

    # ココ意味分からない
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    # redirect_to controller: 'products', action: 'index'
    @product = Product.find(params[:id])
     @product.update(product_params)
      # redirect_to render :new

  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :image, :category_id)
  end
end
