class UsersController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
    @states = State.all
    @scenes = Scene.all
  end

  def show

    if @current_customer

      @forder = Finalorder.where(user_id: session[:myid])
      @forder = @forder.order("id DESC")
      @catalog = Finalorder.where(recipient_id: session[:myid])
      @catalog = @catalog.order("id DESC")
      @customer = Customer.find_by(id: session[:myid])
      @likes = Like.where(customer_id: @customer.id)

    else
      redirect_to("/users/home")
    end
  end

  def decision_show
    @decision = Decision.new
    if @current_customer
      @finalorder = Finalorder.find_by(id: params[:id])
      @object_name = @finalorder.product_id
      @object_name = @object_name.split(",")
      @object_name = @object_name.reverse

      @id = params[:id]
    else
      redirect_to("/users/home")
    end
  end

  def decision_create
    @decision = Decision.new(decision_params)
    if @decision.save
      redirect_to(users_show_path)
    else
      redirect_to
    end
  end


  private

  def decision_params
    params.require(:decision).permit(:customer_id, :recipient_id, :product_id)
  end


# もしここにストロングパラメーター書くとしたらどうやって書けばいいんだろう。。。？？

end
