class LikesController < ApplicationController

  before_action :authenticate_user


  def create
    @like = Like.new(
      customer_id: @current_customer.id,
      product_id: params[:product_id]
      # ↑params[:id]これじゃ不十分かも
    )
    @like.save
    # redirect_to("/products/#{params[:product_id]}")
    redirect_to("/users/home")
  end

  def destroy
   @like = Like.find_by(
     customer_id: @current_customer.id,
     product_id: params[:product_id]
   )
   @like.destroy
   # redirect_to("/products/#{params[:product_id]}")
   redirect_to("/users/home")
 end

end
