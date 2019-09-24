class Admin::ArrivalsController < ApplicationController
  before_action :authenticate_admin_user!
  def index
  	@arrival = Arrival.includes([:product]).page(params[:page]).reverse_order.per(16)
  end

  def create
  	arrival = Arrival.new(arrivals_params)
  	arrival.save
  	flash[:success] = '入荷情報を登録しました'
  	redirect_to admin_arrivals_path
  end
  private
  def arrivals_params
  	params.require(:arrival).permit(:product_id, :received_qty)
  end
end
