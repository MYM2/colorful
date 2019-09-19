class OrdersController < ApplicationController
  def index
  end

  def new
    # オーダー関係オブジェクト
    @order = Order.new
    @order_content = OrderContent.new

    # カートの中身
    @end_user = current_end_user
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
    puts "order-create"
  end
end
