class OrdersController < ApplicationController
    load_and_authorize_resource

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end
 
  # GET /orders/1
  # GET /orders/1.json
  def show
    show_array = []
    @order = Order.find_by(id: params[:id])
  end

  def payment
    redirect_to orders_path, notice: "Payment made succesfully"
  end

  # GET /orders/new
  def new
    @order = Order.new
    @product = Product.find_by_id(params[:product_id])
    @farmers_profile = FarmersProfile.find_by_id(params[:farmers_profile_id])
    @total= @product.price.to_f*params[:Qty].to_f
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @product = Product.find_by(id: params[:order][:product_id])
    @order.profile_id = current_user.profile.id
    @order.farmers_profile_id = params[:order][:farmers_id]
    @order.products << @product
    @product.orders << @order
    @product.amount_available -= params[:order][:volume].to_d
    @order.save
    @product.save

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    #find product being deleted and add it back to amount available
    @order_needed = OrdersProduct.find_by(order_id: params[:id])
    @product_id = @order_needed.product_id
    @product = Product.find_by_id(@product_id)
    amount = @product.amount_available.to_i
    order_amount = @order.volume.to_i
    add_back = amount + order_amount
    @product.amount_available = add_back
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:farmers_profile_id, :profile_id, :volume)
    end
end
