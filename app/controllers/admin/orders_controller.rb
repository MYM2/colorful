class Admin::OrdersController < ApplicationController
  def index
  end

  def show
    @end_user = EndUser.find(params[:id])
    @orders = @end_user.orders.includes(:order_contents).page(params[:page]).reverse_order.per(5)
  end

  def update
    @order = Order.find(order_params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(params[:id])
  end

  private
    def order_params
      params.require(:order).permit(:id, :arrival_status)
    end
end
