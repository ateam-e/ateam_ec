class CartsController < ApplicationController
  respond_to :js, :html ,:json
  def new

  end

  def create
    if session[:myid]
      @c = Cart.new(cart_params)
      @c.save
      @cart = Cart.where(userid: session[:myid]).last
      @productone = Product.find_by(id: @cart.product_id)
      @productsub = Product.all
      # ココ復習しなさい！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
    else
      redirect_to login_path
    end


  end

  def edit

  end

  def update
    @cart = Cart.find(params[:cart][:id])
    @cart = @cart.update(number: params[:cart][:quan], subtotal: params[:cart][:subto])
    respond_to do |format|
      format.html
      format.json{render :json => { "mess": "success" }}
      # こんな書き方もできるよ
    end
    # @cart = Cart.update(cart_params)
    # sonu wrote
  end

  def index
    if session[:myid]
      @cart = Cart.where(userid: session[:myid])
      # viewファイるの中に書いた
      @productsub = Product.all
      respond_to do |format|
        format.html
        format.json{render :json => @cart}
        # ↑の@cartはajaxにデータを送るためのもの
      end

    else
      redirect_to login_path
    end

  end

  def show
  end

  def destroy
    @cart = Cart.find(params[:cart][:id])
    @cart.destroy
    respond_to do |format|
      format.html
      format.json{render :json => { "message": "delete success" }}
    end
  end

  def cart_params
    params.require(:cart).permit(:userid, :productprice, :productname, :subtotal, :number, :product_id)
  end

end
