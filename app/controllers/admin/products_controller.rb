class Admin::ProductsController < ApplicationController
  before_action :authenticate_end_user!

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

  def edit
    @product_new = Product.new
    @disc = @product_new.discs.build
    @song = @disc.songs.build

    @product = Product.find(params[:id])
  end

  def new
    @product_new = Product.new
    @disc_new = @product_new.discs.build
    @song_new = @disc_new.songs.build
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to admin_product_path(@product)
      end
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to admin_product_path(@product)
      end
  end

  def destroy
  end

  private
    def product_params
    params.require(:product).permit(:genre_id, :artist_id, :product_name, :price, :label_id, 
                                    :stopped, :jacket_image,
                                    discs_attributes: [:id, :product_id, :disc_number, :_destroy,
                                    songs_attributes: [:id, :dick_id, :track_number, :song_name, :_destroy]])
    end
end
