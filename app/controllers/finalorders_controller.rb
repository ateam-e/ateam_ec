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
    
  end

  # GET /finalorders/new
  def new
    @finalorder = Finalorder.new
    @customer = Customer.find_by(id: session[:myid])

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
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalorder
      @finalorder = Finalorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finalorder_params
      params.require(:finalorder).permit(:username, :phonenumber, :address, :email, :delivery, :payment, :gift)
    end
end
