class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def edit
  end

  def update
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to()
  end

  def destroy
  end

  def index

  end

  def show
  end

  def login
    @customer = Customer.new
  end

  def loginprocess
    customer = Customer.find_by(email: params[:customer][:email])
    # ↓ココなんで＠取るのかよくわかってないｓ
    if customer && customer.authenticate(params[:customer][:password])
      flash[:notice] = "success"
      session[:myid] = customer.id
      session[:myname] = customer.name
      redirect_to users_home_path
    else
      flash[:notice] = "fail"
    end
  end

  def logout
      session.destroy
      redirect_to users_home_path
  end

  def customer_params
    params.require(:customer).permit(:name,:email,:password)
  end
end
