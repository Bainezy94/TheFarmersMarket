class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

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
    puts "oooooooooooooooooooooooooooooooooooo"
    puts "im in orders show"
    puts params
    puts "----------"
    puts @order.products.last.name
    puts "----------"
    puts Product.where(id: params[:id])
    puts "oooooooooooooooooooooooooooooooooooo"
    # p = Product.find_by(id: params[:order][:product_id])
    # @total= @product.price.to_f*params[:Qty].to_f
  end

  def payment
    # @buyer = Buyer.find_by(profile_id: current_user.profile.id)
    # @car = Car.find(params[:car_id])
    # @buyer.cars << @car
    # @seller = Seller.find(params[:seller_id])
    # @buyer.sellers << @seller

    #@car = car_path(@car.id)
    puts "#######PAYMENT########"
    puts params
    puts "#######PAYMENT########"
    redirect_to orders_path, notice: "Payment made succesfully"
  end

  # GET /orders/new
  def new
    puts "oooooooooooooooooooooooooooooooooooo"
    puts "im in orders new"
    puts params
    puts "oooooooooooooooooooooooooooooooooooo"
    
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
    puts "oooooooooooooooooooooooooooooooooooo"
    puts "im in orders create"
    puts params
    puts "------------------------"
    puts order_params
    puts "oooooooooooooooooooooooooooooooooooo"
    @order = Order.new(order_params)
    @product = Product.find_by(id: params[:order][:product_id])
    puts "--------------------------order is #{@order.volume}"
    puts "--------------------------product is #{@product.name}"
    @order.profile_id = current_user.profile.id
    puts "--------------------------order profile id is #{@order.profile_id}"
    @order.farmers_profile_id = params[:order][:farmers_id]
    puts "--------------------------order farmers profile id is #{@order.farmers_profile_id}"
    @order.products << @product
    puts "--------------------------order product is #{@order.products.last.name}"
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
