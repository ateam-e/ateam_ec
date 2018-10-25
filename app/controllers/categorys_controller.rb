class CategorysController < ApplicationController
  def new
    @category = Category.new

  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    @category.save
    # redirect_to("/categorys")
    redirect_to(users_home_path)
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to (categorys_path)
    # ココも意味分からない
  end

  def destroy
  end

  def index
      @categories = Category.all
  end

  def show
  end

  def items
    @categories = Category.all
    respond_to do |format|
      format.html
      format.json{render :json => @categories }
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
