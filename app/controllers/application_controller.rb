class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_customer

  def set_current_customer
    @current_customer = Customer.find_by(id: session[:myid])
  end


# 多分必要↓
  def authenticate_user
    if @current_customer == nil
      flash[:notice2] = "You Need Login"
      redirect_to("/login")
    end
  end

  def forbid_login_user
    if @current_user
      flash[:notice2] = "You Are Already Logged In"
      redirect_to("/users/home")
    end
  end

end
