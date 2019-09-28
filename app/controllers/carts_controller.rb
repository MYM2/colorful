class CartsController < ApplicationController
  before_action :authenticate_end_user!

  def show
    @end_user = current_end_user
    @carts = @end_user.carts.includes(:product).page(params[:page]).reverse_order.per(5)
    @orderd = true;

    @carts_total = @end_user.carts.includes(:product)
      @total_price = 0
      @total_price_in_tax = 0
      @carts_total.each do |cart|
        @total_price += cart.product.price * cart.product_qty
        @total_price_in_tax += (cart.product.price * Colorful::Application.config.InTax).floor * cart.product_qty
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
    @end_user = current_end_user
    @carts = @end_user.carts

    # カート内にすでにある場合は数量を足す
    if @carts.find_by_product_id(@cart.product.id)
      @cart_in = @carts.find_by_product_id(@cart.product.id)
      @qty = @cart_in.product_qty + @cart.product_qty
      if @qty > 99
              @qty = 99
              flash[:success] = "カート内の商品の数量が上限を超えました。"
      else
              flash[:success] = "カートの商品の数量を変更しました。"
      end
            if @cart_in.update(product_qty: @qty )
              redirect_to product_path(@cart.product.id)
            else
              flash[:danger] = "カートに商品を追加できませんでした。"
              redirect_to products_path
            end

    else #カート内にない商品の場合は追加する。
      @cart = Cart.new(cart_params)
      @cart.end_user_id = current_end_user.id
        if @cart.save
          flash[:success] = "カートに商品を追加しました。"
          redirect_to product_path(@cart.product.id)
        else
          flash[:danger] = "カートに商品を追加できませんでした。"
          redirect_to products_path
        end
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
