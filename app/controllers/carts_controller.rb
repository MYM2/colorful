class CartsController < ApplicationController
  before_action :authenticate_end_user!

  def show
    @end_user = current_end_user
    @carts = @end_user.carts.includes(:product).page(params[:page]).reverse_order.per(10)
  end

  def destroy
    @cart = Cart.find(params[:id])
    if @cart.destroy
        flash[:succsess] = "カートの商品を削除しました。"
        redirect_to cart_path(current_end_user)
    end
  end

  def create
    @cart = Cart.new(product_id: params[:product_id], product_qty: params[:product_qty], end_user_id: current_end_user.id)
    @product = Product.find(params[:product_id])
      if @cart.save
        flash[:succsess] = "カートに商品を追加しました。"
        redirect_to product_path(@product)
      else
        redirect_to products_path
      end
  end

  def update
    @cart = Cart.find(params[:id])
      if @cart.update(cart_params)
        flash[:succsess] = "商品の数量を変更しました。"
        redirect_to cart_path(current_end_user)
      end
  end

  private
    def cart_params
    params.require(:cart).permit(:product_id, :product_qty)
    end
end
