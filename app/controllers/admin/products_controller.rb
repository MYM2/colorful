class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin_user!



  def index
    @products = Product.includes([:artist, :genre]).page(params[:page]).reverse_order.per(20)
  end

  def show
    @product = Product.find(params[:id])
    @discs = @product.discs.includes(:songs)
    @artist = @product.artist
    @genre = @product.genre
    @label = @product.label
    @arrival_new = Arrival.new
    @disposal_new = Disposal.new
    #在庫数計算
      # 入荷数計算
      arrivals = @product.arrivals
      @arrival = arrivals.all.sum(:received_qty)
      # 廃棄数計算
      disposal = @product.disposals
      @disposal = disposal.all.sum(:scrapped_qty)
      # 注文数計算
      order_content = @product.order_contents
      @order_content = order_content.all.sum(:product_qty)
      @stock = @arrival - @disposal - @order_content
      @reviews = @product.reviews.page(params[:page]).reverse_order.per(5)
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
        flash[:success] = "商品の新規登録が完了しました。"
        redirect_to admin_product_path(@product)
      else
        flash[:danger] = "商品の新規登録に失敗しました。"
        redirect_to new_admin_product_path
      end
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:success] = "商品の情報変更が完了しました。"
        redirect_to admin_product_path(@product)
      else
        flash[:danger] = "商品の新規登録に失敗しました。"
        redirect_to edit_admin_product_path
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
