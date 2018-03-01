class UsersController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
  end

  def show
    # Finalorder.order(’id DESC’)
    @forder = Finalorder.where(user_id: session[:myid])
    @forder = @forder.order("id DESC")
    # この書き方ね

    # @product = Product.
  end
end
