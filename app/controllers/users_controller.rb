class UsersController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
  end

  def show
    # @forder = Finalorder.where[id: session[:myid]]
  end
end
