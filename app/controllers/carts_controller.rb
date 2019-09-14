class CartsController < ApplicationController
  before_action :authenticate_end_user!

  def index
  end

  def destroy
  end

  def create
    # binding.pry
    @cart = Cart.new(product_id: params[:product_id], product_qty: params[:product_qty], end_user_id: current_end_user.id)
    binding.pry
      if @cart.save
      end
  end

  def update
  end

  private
    def cart_params
    params.require(:cart).permit(:product_id, :product_qty)
    end
end
