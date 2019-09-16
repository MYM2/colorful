class CartsController < ApplicationController
  before_action :authenticate_end_user!

  def show
    @end_user = current_end_user
    @carts = @end_user.carts.includes(:product).page(params[:page]).reverse_order.per(5)

    @carts_total = @end_user.carts.includes(:product)
      @total_price = 0
      @carts_total.each do |cart|
        @total_price += cart.product.price * cart.product_qty
       end
  end

  def destroy
    @cart = Cart.find(params[:id])
    if @cart.destroy
        flash[:success] = "カートの商品を削除しました。"
        redirect_to cart_path(current_end_user)
    end
  end

  def create
    @cart = Cart.new(cart_params)
    @cart.end_user_id = current_end_user.id
    @product = Product.find(@cart.product_id)
      if @cart.save
        flash[:success] = "カートに商品を追加しました。"
        redirect_to product_path(@product)
      else
        redirect_to products_path
      end
  end

  def update
    @cart = Cart.find(params[:id])
      if @cart.update(cart_params)
        flash[:success] = "商品の数量を変更しました。"
        redirect_to cart_path(current_end_user)
      end
  end

  private
    def cart_params
    params.require(:cart).permit(:product_id, :product_qty)
    end
end
