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
  end

end
