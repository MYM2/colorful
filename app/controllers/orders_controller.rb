class OrdersController < ApplicationController
  def show
    @end_user = current_end_user
    @order= @end_user.Orders.includes(:order_contents)
  end

  def new
    @end_user = current_end_user
    # カートの中身
    @carts = @end_user.carts.includes(:product)
    @freight = 500

    # オーダー関係オブジェクト
    @order = Order.new
    @carts.length.times {@order.order_contents.build}

    @delivery = @end_user.deliveries.find_by(default: :true)

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
    @end_user = current_end_user
    @order.end_user_id = current_end_user.id
      if @order.save
        flash[:success] = "注文が完了しました。"
        redirect_to new_order_path(@end_user)
      else
        flash[:danger] = "注文に失敗しました。"
        redirect_to new_order_path(@end_user)
      end

  end

  private
    def order_params
      params.require(:order).permit(:deliveries_address, :payment_method, :subtotal_ex_tax, :subtotal_in_tax, :freight, :arrival_status,
                                    order_contents_attributes: [:id, :product_id, :product_qty, :price_sum_ex_tax, :price_sum_in_tax])
    end

end
