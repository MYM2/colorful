class OrdersController < ApplicationController
  def index
  end

  def new
    # オーダー関係オブジェクト
    @order = Order.new
    @order_content = OrderContent.new
    @end_user = current_end_user

    @delivery = @end_user.deliveries.find_by(default: :true)

    # カートの中身
    @carts = @end_user.carts.includes(:product)
    @freight = 500

    # カート内合計金額
    @carts_total = @end_user.carts.includes(:product)
    @total_price = 0
    @carts_total.each do |cart|
      @total_price += cart.product.price * cart.product_qty
    end

  end

  def create
    # オーダー関係オブジェクト
    @order = Order.new(order_params)
    params[:carts].each do |cart|
      @cart = Oreder_content.new(:carts)
    end

  end

  private
    def order_params
    params.require(:order).permit(:deliveries_address, :payment_method, :subtotal_ex_tax, :subtotal_in_tax, :freight, :arrival_status, :order_content, :carts)
    end

end
