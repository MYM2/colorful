class Admin::OrdersController < ApplicationController
	before_action :authenticate_admin_user!
  def index
    @orders = Order.all.includes(:order_contents).page(params[:page]).reverse_order.per(5)
  end

  def show
    @end_user = EndUser.find(params[:id])
    @orders = @end_user.orders.includes(:order_contents).page(params[:page]).reverse_order.per(5)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    # ユーザー購入一覧／全体購入一覧の来たページに戻る
    if order_params[:end_user_id].nil?
      redirect_to admin_orders_path
    else
      redirect_to admin_order_path(order_params[:end_user_id])
    end
  end

  private
    def order_params
      params.require(:order).permit(:id, :arrival_status, :end_user_id)
    end
end
