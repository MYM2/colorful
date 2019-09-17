class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @order_content = OrderContent.new

    @end_user = current_end_user
    @carts = @end_user.carts.includes(:product)

    @carts_total = @end_user.carts.includes(:product)
    @total_price = 0
    @carts_total.each do |cart|
      @total_price += cart.product.price * cart.product_qty
    end
  end

  def create
  end
end
