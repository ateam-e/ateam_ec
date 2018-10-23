class UsersController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
    @states = State.all
    @scenes = Scene.all
  end

  def show
    # Finalorder.order(’id DESC’)
    @forder = Finalorder.where(user_id: session[:myid])
    @forder = @forder.order("id DESC")
    # この書き方ね

    # @product = Product.


    @customer = Customer.find_by(id: session[:myid])
    
    @likes = Like.where(customer_id: @customer.id)
  end



end
