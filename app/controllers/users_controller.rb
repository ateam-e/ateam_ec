class UsersController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
  end

  def show
    @forder = Finalorder.where(user_id: session[:myid])

    # @product = Product.
  end
end
