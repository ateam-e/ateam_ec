class FinalordersController < ApplicationController
  before_action :set_finalorder, only: [:show, :edit, :update, :destroy]

  # GET /finalorders
  # GET /finalorders.json
  def index
    @finalorders = Finalorder.all
  end

  # GET /finalorders/1
  # GET /finalorders/1.json
  def show
    @cart = Cart.where(userid: session[:myid])
    @customer = Customer.find_by(id: params[:recipient_id])

  end

  # GET /finalorders/new
  def new
    @finalorder = Finalorder.new
    @customer = Customer.find_by(id: session[:myid])
    @cart = Cart.where(userid: session[:myid])
    @opponent_user = Customer.all

  end

  # GET /finalorders/1/edit
  def edit
  end

  # POST /finalorders
  # POST /finalorders.json
  def create
    @finalorder = Finalorder.new(finalorder_params)

    respond_to do |format|
      if @finalorder.save
        format.html { redirect_to @finalorder, notice: 'Finalorder was successfully created.' }
        format.json { render :show, status: :created, location: @finalorder }
      else
        format.html { render :new }
        format.json { render json: @finalorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finalorders/1
  # PATCH/PUT /finalorders/1.json
  def update
    respond_to do |format|
      if @finalorder.update(finalorder_params)
        format.html { redirect_to @finalorder, notice: 'Finalorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @finalorder }
      else
        format.html { render :edit }
        format.json { render json: @finalorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalorders/1
  # DELETE /finalorders/1.json
  def destroy
    @finalorder.destroy
    respond_to do |format|
      format.html { redirect_to finalorders_url, notice: 'Finalorder was successfully destroyed.' }
      format.json { head :no_content }
      @cart = Cart.where(userid: session[:myid])
      @cart.destroy
      respond_to faction
    end
  end

  def finalaction
    @cart = Cart.where(userid: session[:myid]).destroy_all

    @youbi = %w[(日) (月) (火) (水) (木) (金) (土)]
    d = Date.today
    @deliverday = d + 14

    # 送り先のユーザーを取ってくる処理
    # order_descのインスタンスを一回作らないと値がうまく取ってこれなかった
    order_desc = Finalorder.order("created_at DESC")
    @finalorder = order_desc.find_by(user_id: session[:myid])
    @recipient = Customer.find_by(id: @finalorder.recipient_id)

    # binding.pry
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalorder
      @finalorder = Finalorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finalorder_params
      params.require(:finalorder).permit(:username, :phonenumber, :address, :email, :delivery, :payment, :gift, :user_id, :product_id, :quantity, :recipient_id)
    end
end
