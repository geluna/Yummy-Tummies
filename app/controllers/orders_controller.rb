class OrdersController < ApplicationController
  #skip_before_action :authorize, only: [:new, :create]
  
  before_filter :authenticate_user!
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  #@orders = Order.all

  def resource_name
    :user
  end
  # GET /orders
  # GET /orders.json
  def index
    if current_user.admin?
      @orders = Order.all
    else
    #@orders = Order.all
    @orders = Order.where(email:current_user.email)
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @accounts = Account.where(user_id:current_user.id)
    @menus = @order.menus
    @line_items = @order.line_items
  end

  # GET /orders/new
def new

    @order = Order.new
   # @account = Account.where(user_id:current_user.id)
  # @account = Account.new(account_params)
   
     if @cart.line_items.empty?
   redirect_to store_url, notice: "Your cart is empty"
   return
   end
end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @previous_balance = Account.previous_balance_for_user(current_user)
    @account = Account.new(     
               created_at: DateTime.now,
               user_id: current_user.id,
               email: current_user.email,
               credit: 0.00,
               debit: @cart.total_price,
               acctbal: @previous_balance - @cart.total_price,
               depotype: Purchase Order
                )
   
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    respond_to do |format|
    @order.email = current_user.email
    @order.address = current_user.address
    #@order.created at = @line_items.created_at
    @order.total = @cart.total_price
      if @order.save
         @account.save!
        
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil

        format.html { redirect_to store_url, notice: 'Thank you for your order.' }
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
      params.require(:order).permit(:name, :address, :email, :datefor)
    end
end
