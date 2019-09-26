class ProductsController < ApplicationController
  def index
    @products = Product.includes([:artist, :genre]).page(params[:page]).reverse_order.per(20)
  end

  def show
    @product = Product.find(params[:id])
    @discs = @product.discs.includes(:songs)
    @artist = @product.artist
    @genre = @product.genre
    @label = @product.label
    @cart = Cart.new
    @review = Review.new
    @reviews = @product.reviews.page(params[:page]).reverse_order.per(5)
    if end_user_signed_in?
      @end_user = current_end_user.id
    end
    #在庫数計算
    # arrivals = @product.arrivals
    # @arrival = arrivals.all.sum(:received_qty)
    # disposal = @product.disposals
    # @disposal = disposal.all.sum(:scrapped_qty)
    # order_content = @product.order_contents
    # @order_content = order_content.all.sum(:product_qty)
    @stock = @product.getqty(@product)
  end

end
