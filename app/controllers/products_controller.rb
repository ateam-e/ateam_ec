class ProductsController < ApplicationController
respond_to :js, :html ,:json
# 先に宣言する
  def new
    @product = Product.new

  end

  def create
    @product = Product.new(product_params)
    @product.save

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


    @product = Product.where(category_id: params[:category])
    # ココを変えると絞り込みできる?
    respond_to do |format|
      format.html
      format.json{render :json => @product}
    end



    # ↓の条件分岐を成立させるにはどうしたら良いのだろう？？？
    # if cat_name
    #   @product = Product.where(category_id: params[:category])
    #   # ココを変えると絞り込みできる?
    #   respond_to do |format|
    #     format.html
    #     format.json{render :json => @product}
    #   end
    # elsif catname2
    # @product = Product.where(state_id: params[:category])
    # # ココを変えると絞り込みできる?
    # respond_to do |format|
    #   format.html
    #   format.json{render :json => @product}
    # end
    # elsif Product(scene_id: params[:category])
    # @product = Product.where(scene_id: params[:category])
    #   # ココを変えると絞り込みできる?
    #   respond_to do |format|
    #     format.html
    #     format.json{render :json => @product}
    #   end
    # end
  end

  def show
    @product = Product.find(params[:id])
    @productsub = Product.where(category_id: @product.category_id)
    # @productone.destroy

  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :image, :category_id, :state_id, :scene_id)
  end
end
