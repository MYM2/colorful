class Admin::ProductsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @product = Product.new
    @disc = @product.discs.build
    @songs = @disc.songs.build
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to new_admin_product_path
      end
  end

  def update
  end

  def destroy
  end

  private
    def product_params
    params.require(:product).permit(:genre_id, :artist_id, :product_name, :price, :label_id,
                                    :stopped, :jacket_image_id,
                                    disc_attributes: [:id, :product_id, :disc_number, :_destroy,
                                    song_attributes: [:id, :dick_id, :track_number, :song_name, :_destroy]])
    end
end
